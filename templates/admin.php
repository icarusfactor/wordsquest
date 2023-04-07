<link rel="stylesheet" type="text/css" href="<?php echo plugins_url(); ?>/wordsquest/assets/view.css" media="all">
<script type="text/javascript" src="<?php echo plugins_url(); ?>/wordsquest/assets/view.js"></script>
<script type="text/javascript" src="<?php echo plugins_url(); ?>/wordsquest/assets/tabs.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo plugins_url(); ?>/wordsquest/assets/tabs.css">
<?php $wqp = new WordsQuestPlugin();  ?>


<div class="tab">
  <button class="tablinks" onclick="openTab(event, 'SETTINGS')">SETTINGS</button>
  <button class="tablinks" onclick="openTab(event, 'MANUAL')">MANUAL</button>
  <button class="tablinks" onclick="openTab(event, 'ABOUTINFO')">WORDS QUEST</button>
</div>

<div id="SETTINGS" class="tabcontent">
<h3 style="font-size: 14px;"  >SETTINGS</h3>

<form id="form_111689" class="appnitro"  method="post" action="">
                
                <div class="form_description">
                        <h3 style="font-size: 14px;font-weight: 600;"  >MODIFY OR VIEW WORD SEARCH WORDS</h3>
                        <h3 id="display_rec" ><span style="font-size: 10px;color: blue;" >...LOADED...</span></h3>
                </div>               


               <li id="li_1" >
                <label class="description" for="element_1">Words</label>                
                <div>                
                <textarea id="element_1" name="element_1" class="element textarea small"><?php echo $wqp->pull_words(); ?></textarea> 
                </div>
                <p class="guidelines" id="guide_1"><small>Single Spaced Words Separated By One Space Or Newline</small></p> 
                </li>             


                 <li class="buttons">
                            <input type="hidden" name="form_id" value="111689" />
                            <input type="hidden" name="if_ajaxid"  value="006" />
                            <input id="saveForm" class="button_text" type="submit" name="submit" value="SAVE" />
                </li>
                        </ul>
</form>

</div>

<div id="ABOUTINFO" class="tabcontent">
<img width="400" height="400" src="<?php echo plugins_url(); ?>/wordsquest/assets/wordsquest_icon.png" />
</div>



<div id="MANUAL" class="tabcontent">
<ul >
<li id="li_manual" >
<div>
<label class="description" for="manual">MANUAL:</label>

 You will need to install a MYSQL database table and words for<BR>
the words search to use in its puzzle. Its set to have at least<BR>
10 words in a 13x13 grid puzzle. wordsquest-grid.php has the<BR>
database configs.<BR>
All the words picked to place into the database will need to be<BR/> 
seperated by space and/or new line. <BR/>

The SQL file is in its own director,y but will show it below. <BR/>
<BR/>

--<BR/>
-- Database Setup: <BR/>
----------------------------------------------------------<BR/>
-- Table structure for table `wordsearch`<BR/>
CREATE TABLE `wq_wordsearch` (<BR/>
          `word` varchar(20) COLLATE utf8_bin NOT NULL<BR/>
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;<BR/>
--<BR/>
-- Dumping data for table `wordsearch`<BR/>
INSERT INTO `wq_wordsearch` (`word`) VALUES<BR/>
('ADDRESS'),<BR/>
('ALIAS'),<BR/>
etc.. etc.. etc..<BR/>
('DEPLOY'),<BR/>
('TIMESTAMP');<BR/>
-- Indexes for table `wordsearch`<BR/>
--<BR/>
ALTER TABLE `wq_wordsearch`<BR/>
  ADD PRIMARY KEY (`word`);<BR/>
COMMIT;<BR/>

</div> <!-- END OF MANUAL  -->

<script> 
//  //load up Wordpress options into input fields 
var input_words = document.getElementById("element_1"); 


//If options db is empty we will want to try to fill it with the db words,leave empty if not found as its the first time then. 

console.log( '<?php echo addslashes( get_option('wordsquest_configs' ) ); ?>'  );

var wqObj = JSON.parse( '<?php echo addslashes( get_option('wordsquest_configs' ) ); ?>' );

var wqObjdec = decodeURI( wqObj.words  );

input_words.value = wqObjdec; 


  //Start with About in view
  setTab('ABOUTINFO')

</script> 



