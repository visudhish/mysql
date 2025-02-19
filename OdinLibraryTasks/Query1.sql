#1. Books Not Loaned Out in the Last 6 Months.(joined loandate extra)
select books.bookid,books.Title,loandate from books 
left join loans on
books.bookid = loans.bookid
where books.bookid not in (select loans.BookID from loans where LoanDate between date_sub(curdate(),interval 6 month) and  curdate() )
order by loandate desc ;
