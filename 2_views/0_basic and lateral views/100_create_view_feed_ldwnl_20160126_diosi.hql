-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			create feed_ldwnl
--			
--		Author	Istvan Diosi 30/515-3902
--
--		last update
--			20151215 created	d.i.
--			20160126 telekom	d.i.
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
create or replace view mtsbi.feed_ldwnl as
select f.* 
from 
     mtsbi.feed_all f 
     right join (select fbi_object_reference,max(fbi_download_time) last_dwnld from mtsbi.feed_all group by fbi_object_reference) m
 on        
      m.last_dwnld = f.fbi_download_time
where
     m.fbi_object_reference  = f.fbi_object_reference; 
