#4.Books Loaned and Never Returned.
SELECT loans.bookid,
       books.title,   
       loans.returned,
       loans.returndate
FROM loans
JOIN books ON loans.bookid = books.bookid
WHERE loans.returned = 0;
