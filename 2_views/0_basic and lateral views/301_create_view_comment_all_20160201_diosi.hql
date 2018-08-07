-- --------------------------------------------------------------------
--   		description
--   		basic and lateral views
--   
--   		create comment_all
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--  		last update
--   		20151215 created 				d.i.
--		20160125 telekom-os igazitás, tab eltávolítás	d.i.
--
--  
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW comment_all  AS
select 
fbi_download_time,
fbi_object_type,
fbi_expiry_time,
fbi_root_type,
fbi_root,
fbi_parent_type,
fbi_object_reference,
fbi_parent_id,
fbi_page,
fbi_id,
fbi_level,
`from`.id from_id,
`from`.name from_name,
message,
id,
like_count,
can_remove,
created_time
from fb_comment;
     
 

