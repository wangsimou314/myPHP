USE `milestone`;
CREATE  OR REPLACE VIEW `milestone`.`subject_view` AS 
SELECT 
mile_subject.id as id,
mile_subject.title as title,
mile_subject.content as content,
mile_subject_type.name as type_name
FROM mile_subject
left join mile_subject_type_map on mile_subject_type_map.subject_id = mile_subject.id
left join mile_subject_type on mile_subject_type.id = mile_subject_type_map.type_id;
;