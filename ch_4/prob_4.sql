SELECT vendor_name, invoice_date, invoice_number, invoice_sequence AS li_sequence, line_item_amount AS li_amount
FROM invoices i
  JOIN vendors v
    ON v.vendor_id=i.vendor_id
  JOIN invoice_line_items li
    ON li.invoice_id=i.invoice_id
ORDER BY vendor_name, invoice_date, invoice_number, invoice_sequence