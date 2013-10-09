SELECT start_date,
        DATE_FORMAT(start_date, '%b/%d/%y') AS start_date_slash,
        DATE_FORMAT(start_date, '%c/%e/%y') AS start_date_slash_2,
        DATE_FORMAT(start_date, '%l:%i %p') AS start_date_twelve_hour,
        DATE_FORMAT(start_date, '%c/%e/%y %l:%i %p') AS start_date_full
FROM date_sample