-- --------------------------------------------------------------------
--               description
--                     create sntmnt.anlyzd_pst external table
--
--		Author	Istvan Diosi 30/515-3902
--
--
--              last update
--                     20160410 created       d.i.
--                     
--
--              
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table sntmnt.anlyzd_pst;

-- create section -----------------------------------------------------

CREATE EXTERNAL TABLE sntmnt.anlyzd_pst(
oid string
) 
ROW FORMAT DELIMITED 
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
LOCATION '/user/facebook/analyzed/pst';







 