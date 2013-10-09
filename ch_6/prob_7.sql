SELECT vendor_name, invoice_number, MIN(invoice_date), invoice_total
FROM vendors v
  JOIN invoices i
    ON i.vendor_id=v.vendor_id
GROUP BY vendor_name