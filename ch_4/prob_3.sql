SELECT vendor_name, account_description AS description, default_account_number AS default_account
FROM vendors v
  JOIN general_ledger_accounts gl
    ON v.default_account_number=gl.account_number
ORDER BY account_description DESC, vendor_name DESC