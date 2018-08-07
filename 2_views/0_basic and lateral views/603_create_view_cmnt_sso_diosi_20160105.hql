-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create cmnt_sso
--			SSO-s userek által küldött commentek
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

create or replace view mtsbi.cmnt_sso as
select * 
  from mtsbi.cmnt_all
 ,tlkm_sso tlkm
where trim(cmnt_sender_id) = trim(tlkm.sso_user_id);
