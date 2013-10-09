SELECT  invoice_total,
        ROUND(invoice_total, 1) AS invoice_total_1_round,
        ROUND(invoice_total, 0) AS invoice_total_0_round
FROM invoices