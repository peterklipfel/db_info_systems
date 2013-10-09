UPDATE invoices
SET credit_total=0.1*invoice_total,
    payment_total=invoice_total-credit_total
WHERE invoice_id=115