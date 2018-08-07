-- --------------------------------------------------------------------
--               description
--                     create mtsbi.fb_comment external table
--
--		Author	Istvan Diosi 30/515-3902
--
--
--              last update
--                     20151212 created       	d.i.
--                     20160127 telekom		d.i.
--
--              
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table mtsbi.fb_comment;

-- create section -----------------------------------------------------
CREATE EXTERNAL TABLE mtsbi.fb_comment (
fbi_download_time       string,
fbi_level               int,
fbi_object_reference    string,
fbi_object_type         string,  
fbi_root                string,
fbi_parent_type         string,
fbi_parent_id           string,
fbi_expiry_time         string,
fbi_root_type           string,
fbi_page                string,
fbi_id                  string,
`from`                  struct<id:string,name:string>,
can_remove              boolean,
created_time            string,
message                 string,
id                      string,
like_count              int
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/user/facebook/json_folder/PRD/comment/';