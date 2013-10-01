SELECT gl.account_number, account_description
FROM general_ledger_accounts gl
  LEFT OUTER JOIN invoice_line_items il
    ON il.account_number=gl.account_number
WHERE il.invoice_id IS NULL
ORDER BY account_number