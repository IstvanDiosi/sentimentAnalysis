-- --------------------------------------------------------------------
-- 		description
--			basic and lateral views
--			
--			create comments_all_lat
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151216 created	d.i.
--
--		
--
-- --------------------------------------------------------------------


-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW mtsbi.comments_all_lat_vw0  AS
select 
   fbi_download_time,                 
   fbi_level,                            
   fbi_object_reference,                   
   fbi_root,                 
   fbi_parent_type,                   
   fbi_parent_id,
----------------------------
   fbi_expiry_time,
   fbi_root_type,
   fbi_page,
   fbi_id,
----------------------------
   exp_data.`from`.id comment_sender_id,
   exp_data.`from`.name comment_sender_name,
   exp_data.message_tags,
   exp_data.can_remove,
   exp_data.created_time,
   exp_data.message,
   exp_data.id,
   exp_data.like_count
from fb_comments
     LATERAL VIEW outer explode(data) dualx as exp_data;


CREATE OR REPLACE VIEW mtsbi.comments_all  AS
select 
   fbi_download_time,                 
   fbi_level,                            
   fbi_object_reference,                   
   fbi_root,                 
   fbi_parent_type,                   
   fbi_parent_id,
----------------------------
   fbi_expiry_time,
   fbi_root_type,
   fbi_page,
   fbi_id,
----------------------------
   comment_sender_id,
   comment_sender_name,
   exp_data1.type,
   exp_data1.id as message_tags_id,
   exp_data1.name as message_tags_name,
   can_remove,
   created_time,
   message,
   id,
   like_count
from comments_all_lat_vw0
     LATERAL VIEW outer explode(message_tags) dual as exp_data1;
