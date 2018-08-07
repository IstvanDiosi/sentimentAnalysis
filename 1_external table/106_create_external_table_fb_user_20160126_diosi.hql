-- --------------------------------------------------------------------
-- 		description
--			create mtsbi.fb_user external table
--
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151212 created d.i.
--			20160108 telekomos mod d.i.
--
--
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table mtsbi.fb_user;

-- create section -----------------------------------------------------
CREATE EXTERNAL TABLE fb_user (
fbi_download_time    string,
fbi_level            int,
fbi_object_reference string,
fbi_object_type      string,  
fbi_root             string,
fbi_parent_type      string,
fbi_parent_id        string,
fbi_expiry_time      string,
fbi_root_type        string,
fbi_page             string,
fbi_id               string,
username             string,
first_name           string,
last_name            string,
name                 string,
locale               string,
gender               string,
updated_time         string,
link                 string,
id                   string,
hometown             struct<id:string,name:string>,
quotes               string,
favorite_teams       array<struct<id:string,name:string>>,
favorite_athletes    array<struct<id:string,name:string>>,
education            array<struct<school:struct<id:string,name:string>,type:string,year:struct<id:string,name:string>>>,
bio                  string,
sports               array<struct<id:string,name:string>>,
work                 array<struct<position:struct<id:string,name:string>,start_date:string,end_date:string,employer:struct<id:string,name:string>>>,
location             struct<id:string,name:string>,
birthday             string,
age_range            string,
religion             string,
political            string,
relationship_status  string)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/user/facebook/json_folder/PRD/user/';









 