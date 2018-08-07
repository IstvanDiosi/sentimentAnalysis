-- --------------------------------------------------------------------
-- 		description
--			create mtsbi.fb_photos external table
--
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151213 created	d.i.
--			20160126 telekom	d.i
--
--		
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table mtsbi.fb_photos;

-- create section -----------------------------------------------------
CREATE EXTERNAL TABLE mtsbi.fb_photos (
fbi_download_time       string,
fbi_level               int,
fbi_object_reference    string,
fbi_object_type	        string,  
fbi_root                string,
fbi_parent_type         string,
fbi_parent_id           string,
fbi_expiry_time         string,
fbi_root_type           string,
fbi_page                string,
data	array<struct<`from`:struct<category:string,id:string,name:string>
,comments:struct<data:array<struct<`from`:struct<id:string,name:string>
,message:string,id:string,like_count:int,created_time:string>>>
,updated_time:string
,created_time:string
,likes:struct<data:array<struct<id:string,name:string>>>
,message:string,type:string,id:string>>
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/user/facebook/json_folder/PRD/photos/';