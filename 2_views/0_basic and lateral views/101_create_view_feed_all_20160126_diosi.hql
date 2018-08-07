
-- --------------------------------------------------------------------
--     description
--      feed basic and lateral views
--      
--      create view feed_all
--			
--	Author	Istvan Diosi 30/515-3902
--
--
--    last update
--      20151215 created  d.i.
--      20151223 modif fbi fields
--
--    
-- A 'from' problémája
-- itt a megoldás: :) >>>>>> set hive.support.quoted.identifiers=none;
-- -----------------------------------------------------------------------
Módosított 20151223 - aktuális -
-- create section --------------------------------------------------------
-- ez a kettõ segéd view, azáttekinthetõség miatt d.i. -------------------
-- Itt kokommenteztem minden olyat, ami gondot okozott, például a from-ot
--------------------------------------------------------------------------
create or replace view mtsbi.feed_vw0 as
select 
fbi_download_time,
fbi_object_type,
fbi_expiry_time,
fbi_root_type,
fbi_root,
fbi_parent_type,
fbi_object_reference,
fbi_parent_id,
fbi_page,
fbi_id,
fbi_level,
exp.message,
exp.created_time message_created_time,
exp.type message_type,
exp.id message_id,
exp.`from`.name from_name, 
exp.`from`.id from_id, 
exp.`from`.category from_category,
exp.likes like_of_message,
exp.comments comment_of_message
from mtsbi.fb_feed
LATERAL VIEW outer explode(data) dual as exp;

-- where fbi_parent_type = 'user';


create or replace view mtsbi.feed_vw1 as
select 
fbi_download_time,
fbi_object_type,
fbi_expiry_time,
fbi_root_type,
fbi_root string,
fbi_parent_type,
fbi_root,
fbi_object_reference,
fbi_parent_id,
fbi_page,
fbi_id,
fbi_level,
message,
message_created_time,
message_type,
message_id,
from_name,
from_id,
from_category,
like_of_message.data likes_data, 
comment_of_message.data comments_data
from mtsbi.feed_vw0;

----------------- Ez itt a végsõ, teljesen kibontott view -------------------

create or replace view mtsbi.feed_all as
select 
  fbi_download_time,
         fbi_object_type,
  fbi_expiry_time,
  fbi_root_type,
  fbi_parent_type,
        fbi_root,
  fbi_object_reference,
  fbi_parent_id,
  fbi_page,
  fbi_id,
  fbi_level,
      message,
      message_created_time,
      message_type,
      message_id,
 from_name, 
 from_id, 
 from_category,
------------------------------------------------
  explikes.id  liker_id,
  explikes.name  liker_name,
 expcomm.`from`.id as cmnt_sender_id,
 expcomm.`from`.name as cmnt_sender_name,
  expcomm.message cmnt_message,
  expcomm.id cmnt_id,
  expcomm.like_count cmnt_like_count,
  expcomm.created_time cmnt_created_time
----------------------------------------------
  from mtsbi.feed_vw1
  LATERAL VIEW outer explode(likes_data) dual as explikes
  LATERAL VIEW outer explode(comments_data) dual as expcomm;


