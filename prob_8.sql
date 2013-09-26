SELECT invoice_due_date  AS "Due Date",
       invoice_total     AS "Invoice Total",
       invoice_total*0.1 AS "10%",
       invoice_total+invoice_total*0.1 AS "Plus 10%"
FROM invoices
WHERE invoice_total < 1000 AND invoice_total > 500;
