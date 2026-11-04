SELECT p.id 
FROM person AS p 
INNER JOIN drivers_license as d 
ON p.license_id = d.id 
WHERE d.plate_number LIKE '%H42W%';
