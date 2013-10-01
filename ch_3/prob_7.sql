SELECT CONCAT(vendor_contact_last_name, ', ' ,vendor_contact_first_name)
    AS full_name
FROM vendors
WHERE SUBSTRING(vendors.vendor_contact_last_name, 1, 1) IN ('A', 'B', 'C', 'E')
ORDER BY full_name DESC;
