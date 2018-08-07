-- --------------------------------------------------------------------
--                     description
--                              create mtsbi.fb_page external table
--
--
--		      Author	Istvan Diosi 30/515-3902
--
--                    last update
--                            20151213 created          d.i.
                              20160126 telekom
--
--                    
--
-- --------------------------------------------------------------------

-- drop section -------------------------------------------------------
drop table mtsbi.fb_page;

-- create section -----------------------------------------------------
CREATE EXTERNAL TABLE mtsbi.fb_page (
fbi_download_time            string,
fbi_level                    int,
fbi_object_reference         string,
fbi_object_type              string,  
fbi_root                     string,
fbi_parent_type              string,
fbi_parent_id                string,
fbi_expiry_time              string,
fbi_root_type                string,
fbi_page                     string,
fbi_id                       string,
category                     string,
about                        string,
description                  string,
talking_about_count          int,
likes                        int,
were_here_count              int,
checkins                     int,
id                           string
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/user/facebook/json_folder/PRD/page/';