#3.Total Number of Loans and Reservations Per Member.
SELECT members.memberid,
       members.firstname,
       COUNT(DISTINCT loans.loanid) AS total_loans,
       COUNT(DISTINCT reservations.reservationid) AS total_reservations
FROM members
LEFT JOIN loans ON members.memberid = loans.memberid
LEFT JOIN reservations ON members.memberid = reservations.memberid
GROUP BY members.memberid, members.firstname;