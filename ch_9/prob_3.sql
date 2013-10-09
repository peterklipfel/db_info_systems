SELECT  vendor_name,
        UPPER(vendor_name) AS vendor_name_cap,
        vendor_phone,
        SUBSTRING(vendor_phone, LENGTH(vendor_phone)-3) AS vendor_phone_last_four,
        REPLACE(REPLACE(REPLACE(vendor_phone, '(', ''), ') ', '.'), '-', '.') AS vendor_phone_dots,
        SUBSTRING(vendor_name, LOCATE(' ', vendor_name),
          LOCATE(' ', vendor_name, LOCATE(' ', vendor_name) + 1) - 
            LOCATE(' ', vendor_name)) AS thing_with_wing /* because what else should I call it? */

FROM vendors