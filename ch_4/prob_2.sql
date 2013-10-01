SELECT vendor_name, invoice_number, invoice_date, invoice_total-payment_total-credit_total AS balance_due
FROM invoices i
  JOIN vendors v
    ON i.vendor_id=v.vendor_id
WHERE invoice_total-payment_total-credit_total
ORDER BY vendor_name ASC