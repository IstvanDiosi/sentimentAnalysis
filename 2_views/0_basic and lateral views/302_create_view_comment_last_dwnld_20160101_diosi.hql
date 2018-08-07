-- --------------------------------------------------------------------
-- 		description
--			create mtsbi.fb_comment_last_dwnld
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151214 created	d.i.
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW mtsbi.comment_ldwnld  AS
select f.* 
from 
     mtsbi.comment_all f 
     right join (select fbi_object_reference,max(fbi_download_time) last_dwnld from mtsbi.comment_all group by fbi_object_reference) m
 on        
      m.last_dwnld = f.fbi_download_time
where
     m.fbi_object_reference          = f.fbi_object_reference; 



