Words Quest is a HTML5/CSS3 Mouse Or Touch Based Word Search program.

You will need to install a MYSQL database table and words for
the words search to use in its puzzle. Its set to have at least
10 words in a 13x13 grid puzzle. wordsquest-grid.php has the
database configs.
All the words picked to place into the database will need to be
seperated by space and/or new line.
The SQL file is in its own director,y but will show it below.

> -- Database Setup:
> ----------------------------------------------------------
> -- Table structure for table `wordsearch`
> CREATE TABLE `wq_wordsearch` (
> `word` varchar(20) COLLATE utf8_bin NOT NULL
> ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
> --
> -- Dumping data for table `wordsearch`
> INSERT INTO `wq_wordsearch` (`word`) VALUES
> ('ADDRESS'),
> ('ALIAS'),
> etc.. etc.. etc..
> ('DEPLOY'),
> ('TIMESTAMP');
> -- Indexes for table `wordsearch`
> --
> ALTER TABLE `wordsearch`
> ADD PRIMARY KEY (`word`);
> COMMIT;
