SELECT name 
FROM person 
WHERE id IN (
    SELECT person_id 
    FROM get_fit_now_member 
    JOIN get_fit_now_check_in ON id = membership_id 
    WHERE membership_id LIKE '48Z%' 
      AND check_in_date = '20180109'
) 
AND id IN (
    SELECT p.id 
    FROM person p 
    JOIN drivers_license d ON p.license_id = d.id 
    WHERE d.plate_number LIKE '%H42W%'
);
