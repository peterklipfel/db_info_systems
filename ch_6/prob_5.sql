SELECT SUM(largest_unpaid) AS largest_unpaid_total
FROM (
  SELECT vendor_id, MAX(invoice_total-payment_total-credit_total) AS largest_unpaid
  FROM invoices
  GROUP BY vendor_id
  HAVING MAX(invoice_total-payment_total-credit_total) > 0 ) unpaid