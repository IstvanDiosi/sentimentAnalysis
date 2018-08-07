-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create cmnt_all
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20160224 created	d.i.
--
--		Az feed_all >> cmnt
--		
--
-- --------------------------------------------------------------------

create or replace view mtsbi.cmnt_all as
select distinct
   fbi_download_time 
  ,fbi_object_type
  ,fbi_expiry_time 
  ,fbi_root_type 
  ,fbi_parent_type 
  ,fbi_root 
  ,fbi_object_reference 
  ,fbi_parent_id
  ,fbi_page 
  ,fbi_id 
  ,fbi_level
  ,from_id message_sender_id
  ,message_id
  ,cmnt_sender_id  
  ,cmnt_sender_name 
  ,cmnt_message
  ,cmnt_id
  ,cmnt_like_count
  ,cmnt_created_time 
from feed_all;            
