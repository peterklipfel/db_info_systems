SELECT  invoice_number, invoice_date, 
        DATE_ADD(invoice_date, INTERVAL 30 DAY), 
        payment_date,
        TO_DAYS(payment_date) - TO_DAYS(invoice_date) AS days_to_pay,
        MONTH(invoice_date) AS invoice_month,
        YEAR(invoice_date) AS invoice_year
FROM invoices