-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create post_sso
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

create or replace view post_sso as
select * 
  from mtsbi.post_all
 ,tlkm_sso tlkm
where trim(from_id) = trim(tlkm.sso_user_id);
