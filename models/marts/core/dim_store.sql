 {{ config(materialized='table') }}
 
 with sel as (

   select *  from {{ ref('stg_fuel_price' )}}
 )
  select 
    distinct(service_station_name) as service_station_name
  ,postcode
  ,suburb
  ,brand
  from sel
