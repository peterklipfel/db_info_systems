SELECT vendor_name, invoice_number, invoice_date, invoice_total
FROM vendors v
  JOIN invoices i
    ON i.vendor_id=v.vendor_id
WHERE invoice_date=(
  SELECT MIN(invoice_date)
  FROM invoices
  WHERE vendor_id=i.vendor_id)
