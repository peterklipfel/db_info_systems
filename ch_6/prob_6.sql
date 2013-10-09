SELECT vendor_name, vendor_city, vendor_state
FROM vendors
WHERE CONCAT(vendor_city,vendor_state) NOT IN (
  SELECT CONCAT(vendor_city,vendor_state) AS location
  FROM vendors
  GROUP BY location
  HAVING COUNT(*) > 1
  )
ORDER BY vendor_state, vendor_city