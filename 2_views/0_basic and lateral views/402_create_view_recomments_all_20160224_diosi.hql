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
--		Az fb_comments >> comments_all let�lt�sben csak azok recommentek
--		amelyek eset�ben az fbi_root_type='commet' teljes�l
--
-- --------------------------------------------------------------------
create or replace view mtsbi.recomments_all as
select * from mtsbi.comments_all 
where fbi_parent_type='comment';

