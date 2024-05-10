SELECT DISTINCT a.title
From album a

SELECT *
FROM Customer c
ORDER BY c.country ASC

INSERT INTO MediaType (MediaTypeId,"Name")
Values (6,"CD")

SELECT *
FROM Customer c
WHERE Company IS NULL

SELECT a.AlbumId, a.Title, a.ArtistId 
FROM album a
INNER JOIN Artist a2
ON a.ArtistId=a2.ArtistId

SELECT t.TrackId, t.Name, a.Title
FROM track t
LEFT JOIN Album a
ON t.AlbumId=a.AlbumId 

SELECT t.TrackId, t.Name, t.Name AS MediaType 
FROM Track t
RIGHT JOIN MediaType mt
ON t.MediaTypeId=mt.MediaTypeId

SELECT il.InvoiceLineId, il.UnitPrice, il.Quantity, t.Milliseconds 
FROM track t
FULL OUTER JOIN InvoiceLine il
ON il.TrackId=t.TrackId 
ORDER BY t.Milliseconds DESC

SELECT c.FirstName
FROM Customer c
UNION
SELECT e.FirstName
FROM Employee e

SELECT il.InvoiceLineId, il.InvoiceId, il.TrackId, il.UnitPrice, il.Quantity 
FROM InvoiceLine il
WHERE il.TrackId IN ( 
SELECT t.TrackId
FROM track t
WHERE t.Composer = "Queen")

SELECT i.InvoiceId, i.Total
FROM Invoice i
ORDER BY i.Total DESC 

SELECT il.InvoiceLineId, sum(il.UnitPrice) AS Total
FROM InvoiceLine il
GROUP BY il.InvoiceLineId
HAVING il.invoiceLineId BETWEEN 150 AND 160

SELECT il.InvoiceLineId, il.UnitPrice,
CASE 
	WHEN UnitPrice > 1 THEN "Precio Normal"
	ELSE "Promocion"
END AS Tipo Precio
FROM InvoiceLine il
WHERE il.InvoiceLineId BETWEEN 478 AND 487


END
