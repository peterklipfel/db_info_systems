SELECT vendor_name, COUNT(DISTINCT li.account_number) AS total_ledger_accounts
FROM vendors v
  JOIN invoices i
    ON v.vendor_id = i.vendor_id
  JOIN invoice_line_items li
    ON i.invoice_id = li.invoice_id
GROUP BY vendor_name
HAVING COUNT(DISTINCT li.account_number) > 1