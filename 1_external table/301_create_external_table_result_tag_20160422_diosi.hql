-- --------------------------------------------------------------------
--               description
--                     create sntmnt.result_tag external table
--
--		Author	Istvan Diosi 30/515-3902
--
--
--              last update
--                     20160422 created       d.i.
--                     
--
--              
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table sntmnt.result_tag;

-- create section -----------------------------------------------------

CREATE EXTERNAL TABLE sntmnt.result_tag(
 message_sender_id string
,message_id        string
,cmnt_sender_id    string
,cmnt_id           string
,oid               string
,tag               string
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE
LOCATION '/user/facebook/sntmnt_result/tag';







 