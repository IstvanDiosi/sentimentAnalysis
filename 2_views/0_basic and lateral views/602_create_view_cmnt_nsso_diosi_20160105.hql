-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create cmnt_nsso
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

CREATE OR REPLACE VIEW mtsbi.cmnt_nsso  AS
select * from mtsbi.cmnt_all f
left outer join tlkm_sso tlkm
on (trim(cmnt_sender_id) = tlkm.sso_user_id)
where tlkm.sso_user_id is null;
