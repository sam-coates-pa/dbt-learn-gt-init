-- This is a dbt model that creates a view of orders from the raw.jaffle_shop.orders table.
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{source('jaffle_shop', 'orders')}}