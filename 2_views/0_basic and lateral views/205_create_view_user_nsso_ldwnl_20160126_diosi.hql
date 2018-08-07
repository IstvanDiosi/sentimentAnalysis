-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create user_nsso_ldwnl
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151215 created	d.i.
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
create or replace view mtsbi.user_nsso_ldwnl as
select f.* 
from 
     mtsbi.user_nsso f 
     right join (select fbi_object_reference,max(fbi_download_time) last_dwnld from mtsbi.user_nsso group by fbi_object_reference) m
 on        
      m.last_dwnld = f.fbi_download_time
where
     m.fbi_object_reference  = f.fbi_object_reference; 
