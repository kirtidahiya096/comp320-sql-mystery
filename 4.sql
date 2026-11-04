SELECT get_fit_now_member.person_id
FROM get_fit_now_member
JOIN get_fit_now_check_in
ON get_fit_now_member.id = get_fit_now_check_in.membership_id
WHERE get_fit_now_member.id LIKE '48Z%'
AND get_fit_now_member.membership_status = 'gold'
AND get_fit_now_check_in.check_in_date = 20180109;