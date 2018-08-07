-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create rposrt_all
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20160224 created	d.i.
--
--		Az feed_all >> message 
--		
--
-- --------------------------------------------------------------------

create or replace view mtsbi.post_all as
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
  ,message
  ,message_created_time  
  ,message_type         
  ,message_id            
  ,from_name             
  ,from_id   
from feed_all;            
