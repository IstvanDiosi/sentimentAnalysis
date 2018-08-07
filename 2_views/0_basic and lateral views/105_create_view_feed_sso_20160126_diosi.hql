-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create feed_sso_lat
--
--			
--		Author	Istvan Diosi 30/515-3902
--
--		last update
--			20151215 created		d.i.
--			20160126 telekomos igazitas	d.i.
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW mtsbi.feed_sso  AS
select * from mtsbi.feed_all f
   join mtsbi.tlkm_sso tlkm
on trim(f.fbi_parent_id) = trim(tlkm.sso_user_id);

CREATE OR REPLACE VIEW mtsbi.feed_sso  AS
select *
  from 
      mtsbi.feed_all f
     ,mtsbi.tlkm_sso tlkm
where f.fbi_parent_id = tlkm.sso_user_id;








****************************************
select * from mtsbi.feed_all f
   join tlkm_sso tlkm
on trim(f.fbi_parent_id) = trim(tlkm.sso_user_id);


select * 
  from 
      mtsbi.feed_all f
     ,tlkm_sso tlkm
where trim(f.fbi_parent_id) = trim(tlkm.sso_user_id);
------------------------------------------------------------------

select f.fbi_parent_id,tlkm.sso_user_id
  from 
      mtsbi.feed_all f
     ,tlkm_sso tlkm
where f.fbi_parent_id = tlkm.sso_user_id limit 100;
-------------------------------------------------------------------
select count(*) 
  from 
      mtsbi.feed_all f
     ,tlkm_sso tlkm
where trim(f.from_id) = trim(tlkm.sso_user_id);


