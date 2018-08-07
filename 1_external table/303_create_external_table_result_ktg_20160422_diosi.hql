-- --------------------------------------------------------------------
--               description
--                     create sntmnt.result_ktg external table
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
drop table sntmnt.result_ktg;

-- create section -----------------------------------------------------

CREATE EXTERNAL TABLE sntmnt.result_ktg(
 message_sender_id string
,message_id        string
,cmnt_sender_id    string
,cmnt_id           string
,oid               string
,ktg               string
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/facebook/sntmnt_result/ktg';







 