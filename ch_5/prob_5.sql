SELECT account_description, COUNT(*) AS total_line_itmes, SUM(line_item_amount) AS total_line_item_amount
FROM invoice_line_items il
  JOIN general_ledger_accounts gl
    ON gl.account_number=il.account_number
  JOIN invoices i
    ON il.invoice_id=i.invoice_id
WHERE i.invoice_date BETWEEN '2011-04-01' AND '2011-06-30'
GROUP BY account_description
HAVING COUNT(*) > 1
ORDER BY SUM(line_item_amount) DESC