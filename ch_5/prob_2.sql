SELECT vendor_name, SUM(invoice_total) AS invoice_total_sum
FROM invoices i
  JOIN vendors v
    ON v.vendor_id=i.vendor_id
GROUP BY i.vendor_id
ORDER BY SUM(invoice_total) DESC