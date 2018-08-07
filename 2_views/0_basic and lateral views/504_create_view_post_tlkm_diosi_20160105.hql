-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create post_tlkm
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

create or replace view mtsbi.post_tlkm as
select * 
  from mtsbi.post_all
where from_id='189246802995';