/*72. Write a query to detect gaps in a sequence of invoice numbers.*/

With recursive missing_invoice As (
select min(invoice_id) from invoice as n
union all
select n+1 as n from missing_invoice
where n <(select max(invoice_id) from invoice)
)
select * from missing_invoice
except 
select invoice_id from invoice
