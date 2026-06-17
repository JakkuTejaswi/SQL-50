select L.book_id, L.title, L.author, L.genre, L.publication_year, 
count(B.book_id) as current_borrowers
from library_books L
join borrowing_records B
on L.book_id=B.book_id
where B.return_date is null 
group by L.book_id, L.title, L.author, L.genre, L.publication_year, L.total_copies
having count(B.book_id)=L.total_copies 
order by current_borrowers desc, 
l.title;