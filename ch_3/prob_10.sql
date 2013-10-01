SELECT invoice_number, invoice_date, payment_date, invoice_total-payment_total-credit_total AS balance_due
FROM invoices
WHERE payment_date
IS NULL