SET hive.cli.print.header=true;
SET hive.query.name=ExtremeWeather;

SET hive.tez.input.format=org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;
SET mapreduce.input.fileinputformat.split.maxsize=16777216;

create table max_temp_by_year as

SELECT year, max(temp) as max_temp FROM noaa_gsod_pds group by year;
