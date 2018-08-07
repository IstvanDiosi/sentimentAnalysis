-- --------------------------------------------------------------------
--   		description
--   		feed basic and lateral views
--   
--  		 create user_all_lat
--			
--		Author	Istvan Diosi 30/515-3902
--
--
--  		last update
--   		20151215 created d.i.
--		20160125 telekom-os igazitás, tab eltávolítás
--
--  
--
-- --------------------------------------------------------------------

-- create section -----------------------------------------------------
CREATE OR REPLACE VIEW user_all  AS
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
username,
first_name,
last_name,
name,
locale,
gender,
updated_time,
link,
id,
hometown.id hometown_id,
hometown.name hometown_name,
quotes,
exp_favteam.id favorite_team_id,
exp_favteam.name favorite_team_name,
exp_favath.id favorite_athletes_id,
exp_favath.name favorite_athletes_name,
exp_edu.school.id edu_school_id,
exp_edu.school.name edu_school_name,
exp_edu.type edu_type,
exp_edu.year.id edu_year_id,
exp_edu.year.name edu_year_name,
bio,
exp_sport.id sport_id,
exp_sport.name sport_name,
exp_work.position.id work_positio_id,
exp_work.position.name work_positio_name,
exp_work.start_date work_start_date,
exp_work.end_date work_end_date,
exp_work.employer.id work_emp_id,
exp_work.employer.name work_emp_name,
location.id location_id,
location.name location_name,
birthday,
age_range,
religion,
political,
relationship_status
from fb_user
     LATERAL VIEW outer explode(favorite_teams) dual as exp_favteam
     LATERAL VIEW outer explode(favorite_athletes) dual as exp_favath
     LATERAL VIEW outer explode(education) dual as exp_edu
     LATERAL VIEW outer explode(sports) dual as exp_sport
     LATERAL VIEW outer explode(work) dual as exp_work;
 

