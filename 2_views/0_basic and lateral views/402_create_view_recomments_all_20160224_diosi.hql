-- --------------------------------------------------------------------
-- 		description
--			feed basic and lateral views
--			
--			create recomments_all
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--		last update
--			20160224 created	d.i.
--
--		Az fb_comments >> comments_all letöltésben csak azok recommentek
--		amelyek esetében az fbi_root_type='commet' teljesül
--
-- --------------------------------------------------------------------
create or replace view mtsbi.recomments_all as
select * from mtsbi.comments_all 
where fbi_parent_type='comment';

