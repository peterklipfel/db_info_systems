SELECT account_description, COUNT(*) AS total_line_itmes, SUM(line_item_amount) AS total_line_item_amount
FROM general_ledger_accounts gl
  JOIN invoice_line_items il
    ON gl.account_number=il.account_number
GROUP BY account_description
HAVING COUNT(*) > 1
ORDER BY SUM(line_item_amount) DESC