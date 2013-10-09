SELECT  invoice_total, 
        FORMAT(invoice_total, 1) AS invoice_total_tenths,
        CONVERT(invoice_total, SIGNED) AS invoice_total_convert_int,
        CAST(invoice_total AS SIGNED) AS invoice_total_cast_int
FROM invoices