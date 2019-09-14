/*!chalange 1*/
SELECT authors.au_fname as FirstName,authors.au_lname as LastName, titles.title , publishers.pub_name As PublisherName
FROM authors 
JOIN titleauthor 
ON authors.au_id = titleauthor.au_id 
JOIN titles 
ON titles.title_id = titleauthor.title_id
JOIN publishers
ON titles.pub_id= publishers.pub_id;


/*!chalange 2*/
SELECT authors.au_fname as FirstName,authors.au_lname as LastName ,publishers.pub_name,  COUNT(titles.title_id ) AS publications
FROM authors 
JOIN titleauthor 
ON authors.au_id = titleauthor.au_id 
left JOIN titles 
ON titles.title_id = titleauthor.title_id
right JOIN publishers
ON titles.pub_id= publishers.pub_id
GROUP BY authors.au_fname;

/*!chalange 3*/

SELECT   authors.au_id as AuthorID, authors.au_fname as FirstName,authors.au_lname as LastName, ytd_sales as YearToDateSales
FROM authors 
JOIN titleauthor 
ON authors.au_id = titleauthor.au_id 
JOIN titles 
ON titles.title_id = titleauthor.title_id
ORDER BY YearToDateSales DESC limit 3;

/*!chalange 4*/

SELECT authors.au_id as AuthorID, authors.au_fname as FirstName,authors.au_lname as LastName, ytd_sales as YearToDateSales
FROM authors 
JOIN titleauthor 
ON authors.au_id = titleauthor.au_id 
JOIN titles 
ON titles.title_id = titleauthor.title_id
ORDER BY  YearToDateSales DESC;



