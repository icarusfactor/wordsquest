<?php

/**
 * @package  WordsQuestPlugin
 */

/*
 Plugin Name: Words Quest Plugin
 Plugin URI: http://userspace.org
 Description: Words Quest is a basic HTML5/CSS3 Word Search program.
 Version: 1.1.0
 Author: Daniel Yount
 Author URI: http://userspace.org
 License: GPLv3 or later
 Text Domain: wordsquest-plugin
 */

/*
 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 Copyleft 2019 Daniel Yount aka [Icarus]factor
 */
defined('ABSPATH')or die('Hey, what are you doing here? You silly human!');
if(!class_exists('WordsQuestPlugin')) {

    class WordsQuestPlugin {
        public $plugin;

        function __construct() {
            $this->plugin = plugin_basename(__FILE__);
        }

        function register() {
            wp_enqueue_script('jquery');
            add_action('wp_enqueue_scripts', array($this, 'theme_enqueue'));
            add_action('admin_menu', array($this, 'add_admin_pages'));
            add_filter("plugin_action_links_$this->plugin", array($this, 'settings_link'));
            add_action('wp_ajax_nopriv_ajaxwq_do_something', array($this, 'wq_do_something_serverside'));
            add_action('wp_ajax_ajaxwq_do_something', array($this, 'wq_do_something_serverside'));
            
            /* notice green_do_something appended to action name of wp_ajax_ */
            add_action('admin_enqueue_scripts', array($this, 'wq_enqueue'));

            #For debug info 
            #add_action(modal_survey_action_admin_email, array(&$this, 'wq_adminemail'));
            #add_action(modal_survey_action_participants_create, array(&$this, 'wq_usercreate'));
            #add_action(modal_survey_action_participants_update, array(&$this, 'wq_userupdate'));
        }

        public function settings_link($links) {
            $settings_link = '<a href="admin.php?page=wordsquest_plugin">Settings</a>';
            array_push($links, $settings_link);
            return $links;
        }

        public function add_admin_pages() {
            add_menu_page('WordsQuest Plugin', 'WordsQuest', 'manage_options', 'wordsquest_plugin', array($this, 'admin_index'), 'dashicons-store', 110);
        }

        public function admin_index() {
            require_once plugin_dir_path(__FILE__). 'templates/admin.php';
        }

        function wq_enqueue() {
            wp_enqueue_style('wqbootcss', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css');
            wp_enqueue_script('wqpopper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js');
            wp_enqueue_script('wqboot', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js');
            wp_enqueue_script('ajaxwq_script', plugin_dir_url(__FILE__). 
                                                              'assets/ajax_call_to_handle_form_submit.js');
            wp_localize_script('ajaxwq_script', 'ajaxwq_object', array('ajaxwq_url' => admin_url('admin-ajax.php'), 'if_ajaxid' => 006));
        }

        function theme_enqueue() {
            // enqueue all our scripts
            wp_enqueue_style('wq_pluginstyle', plugins_url('assets/wqgc_1.1.3.css', __FILE__), null, '1.1.3');
            wp_enqueue_script('wq_pluginscript_footer', plugins_url('assets/clickcheck6.js', __FILE__), null, '0.9.0', true);
        }

        function activate() {
            require_once plugin_dir_path(__FILE__). 'inc/wordsquest-plugin-activate.php';
            WordsQuestPluginActivate::activate();
        }


        /*Idea behind this function is to pull words from DB list and echo them back to the browswer so it will be used to fill element_1 */
        public function pull_words() {
            global $wpdb;
	    $words_array=[];
	    $row="";
            $cnt = 0;
            $madeit = "";
            //  Insert words into database.
            error_log("pull_data:pull words");
            $rqpullword = "SELECT * FROM `wq_wordsearch` WHERE 1;";
            foreach( $wpdb->get_results( $rqpullword ) as $key => $row) {
                if(!empty($row->word)) { 
                                     $words_array[$cnt] = $row->word;
                                     $madeit = $madeit . "\n" . strval($words_array[$cnt]);
                                     /* Log getting words from db  */ 
                                     //error_log("pull_data:" . strval($row->word) .":count:" . strval($cnt).":");
                                       }
                $cnt=$cnt+1;
            	} 
            return $madeit;
        }

        public function push_words($words) {
            global $wpdb;
            //decode to make a PHP array.                   
            $words_array = preg_split("/[\s,]+/", $words);
            $size_it = count($words_array);
            $cnt = 0;
            $max_loop_iterations = 3000;
            //Truncate databse table.
            $rqpushword = "TRUNCATE TABLE `wq_wordsearch`; ";
            $wpdb->query($rqpushword);

            while($cnt <= $size_it - 1) {
                //  Insert words into database. 
                $rqpushword = "INSERT INTO `wq_wordsearch` ( `word`  ) VALUES ( '" . $words_array[$cnt] . "' );";
                $wpdb->query($rqpushword);
                if($cnt ++ == $max_loop_iterations) {
                    //error_log("push_data:max_loop_iterations: Too many iterations...");
                    break;
                }
            }
            return $words_array;
        }
        // Basic POST function of return call from js 
        function wq_do_something_serverside() {
            //Use this value to validate each data set is only for this plugin.
            $unique_value = $_POST['if_ajaxid'];

            if($unique_value == '006') {
                // Convert output to ajax call      
                $d1 = $_POST['element_1'];
                 
                //Check if  URL data query is empty , if so send false
                if( empty($this->push_words($d1)) or $d1 == ''  ) {
                    echo "false";
                    error_log("push_data:element_1:empty");
                    die();
                } else {
                    //enter words into DB. 
                    $words_array = $this->push_words($d1);
                    echo "true";
                    error_log("push_data:element_1:send");
                    die();
                }
            }
        }

        function thegame() {
            //Words Quest word class
            require_once plugin_dir_path(__FILE__). 'inc/class.word.php';
            // Words Quest Grid class
            require_once plugin_dir_path(__FILE__). 'inc/wordsquest-plugin-grid.php';
            //The main wordsearch layout and search items will be generated here.  
            $grid = new Grid();
            $grid->gen();
            $wordbox_start = "<DIV id=\"wq-wordbox\" class=\"wqwordsbox\" style=\"padding: 4px;color: #555555 ;font-weight: 400;font-size: 1.24em;background-image: linear-gradient(rgba(255,255,255,.5), rgba(255,255,255,0));position: relative;top: -345px;left: 5px;width: 190px;border: 3px solid #5555FF;\" >";
            $wordbox_end = "</DIV>";
            $gridtop = "<div class=\"bannerpuzzle\" ><DIV ID=\"thegame\" STYLE=\"width: 500px;height: 350px;\">";
            $gridbottom = "</div></div>";
            //start rendering game here.
            $Content = $gridtop;
            $Content .= $grid->render();
            $Content .= $gridbottom;
            $Content .= $wordbox_start;
            $Content .= "<span style=\"color: #5555E5;\"  >■Words Quest■</span><BR/>\n";
            $Content .= $grid->renderWordsList("<BR/>\n");
            $Content .= $wordbox_end;
            $Content .= $grid->answerList();
            return $Content;
        }
    }
    $wordsquestPlugin = new WordsQuestPlugin();
    $wordsquestPlugin->register();
    // activation
    register_activation_hook(__FILE__, array($wordsquestPlugin, 'activate'));
    // deactivation
    require_once plugin_dir_path(__FILE__). 'inc/wordsquest-plugin-deactivate.php';
    register_deactivation_hook(__FILE__, array('WordsQuestPluginDeactivate', 'deactivate'));
    add_shortcode("wordsquest", array($wordsquestPlugin, 'thegame'));
}
