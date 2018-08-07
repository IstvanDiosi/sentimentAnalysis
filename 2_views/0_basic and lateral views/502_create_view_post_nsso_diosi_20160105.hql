-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create post_nsso
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

CREATE OR REPLACE VIEW mtsbi.post_nsso  AS
select * from mtsbi.post_all f
left outer join tlkm_sso tlkm
on (trim(from_id) = tlkm.sso_user_id)
where tlkm.sso_user_id is null;
