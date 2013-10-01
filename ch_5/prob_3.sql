SELECT vendor_name, COUNT(*) AS number_of_invoices, SUM(invoice_total) AS invoice_total_sum
FROM vendors v
  JOIN invoices i
    ON v.vendor_id=i.vendor_id
GROUP BY i.vendor_id
ORDER BY COUNT(*) DESC