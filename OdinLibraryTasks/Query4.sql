3. Top 3 Most Borrowed Categories.

select books.genre,count(loans.bookid)  from books 
right join loans on 
books.bookid = loans.bookid
group by books.genre
order by count(loans.bookid) desc
limit 3;