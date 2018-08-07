-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create user_sso_lat
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20151215 created	d.i.
--			201260126 telekom-os  a fb_parent_id helyett az f.id 
--
--		
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
-- sima descartes szorzatos ------------------------------------------
CREATE OR REPLACE VIEW mtsbi.user_sso  AS
select * from 
    mtsbi.user_all f
   ,mtsbi.tlkm_sso tlkm
where f.id = tlkm.sso_user_id;


////////////////// elavított //////////////////////
CREATE OR REPLACE VIEW mtsbi.user_sso  AS
select * from mtsbi.user_all f
left semi join tlkm_sso tlkm
on (f.fbi_parent_id = tlkm.sso_user_id);
