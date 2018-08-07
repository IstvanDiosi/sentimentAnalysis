-- --------------------------------------------------------------------
--               description
--                     create mtsbi.tlkm_sso external table
--
--
--		Author	Istvan Diosi 30/515-3902
--
--              last update
--                     20151212 created         d.i.
--                     20160127 telekom		d.i.
--
--              
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table mtsbi.tlkm_sso;

-- create section -----------------------------------------------------

CREATE EXTERNAL TABLE tlkm_sso (
sso_user_id string
) 
ROW FORMAT DELIMITED 
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
LOCATION '/user/facebook/sso_list';







 