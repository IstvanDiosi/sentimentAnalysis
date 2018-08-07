-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create user_ldwnl
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
create or replace view mtsbi.user_ldwnl as
select f.* 
from 
     mtsbi.user_all f 
     right join (select id,max(fbi_download_time) last_dwnld from mtsbi.user_all group by id) m
 on        
      m.last_dwnld = f.fbi_download_time
where
     m.id  = f.id; 
