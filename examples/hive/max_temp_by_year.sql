

create table max_temp_by_year as

SELECT year, max(temp) as max_temp FROM noaa_gsod_pds group by year;
