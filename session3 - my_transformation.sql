Create materialized view `sample_trips_pipeline1` as 
select 
  pickup_zip,
  fare_amount
FROM samples.nyctaxi.trips;


Create materialized view `sample_zones_pipeline1` as 
select 
  pickup_zip,
  sum(fare_amount) as total_fare
from sample_trips_pipeline1
group by pickup_zip;