-- This is a dbt model that creates a view of customers from the raw.jaffle_shop.customers table.
select
        id as customer_id,
        first_name,
        last_name

    from {{source('jaffle_shop', 'customers')}}