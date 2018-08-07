-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create feed_nsso
--
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
CREATE OR REPLACE VIEW mtsbi.feed_nsso  AS
select * from mtsbi.feed_all f
left outer join tlkm_sso tlkm
on (f.fbi_parent_id = tlkm.sso_user_id)
where tlkm.sso_user_id is null;