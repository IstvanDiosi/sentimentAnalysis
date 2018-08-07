-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create cmnt_tlkm
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

create or replace view mtsbi.cmnt_tlkm as
select * 
  from mtsbi.cmnt_all
where cmnt_sender_id='189246802995';