-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create user_nsso
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151215 created			d.i.
--			20160126 fb_parent_id id-re cserelve	d.i.
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW mtsbi.user_nsso  AS
select * from mtsbi.user_all f
left outer join tlkm_sso tlkm
on (f.id = tlkm.sso_user_id)
where tlkm.sso_user_id is null;

