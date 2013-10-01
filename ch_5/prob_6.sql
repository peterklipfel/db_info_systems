SELECT account_number, SUM(line_item_amount) AS total_line_item_amount
FROM invoice_line_items
GROUP BY account_number
WITH ROLLUP