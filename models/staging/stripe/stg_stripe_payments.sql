-- This is a dbt model that creates a view of payments from the raw.stripe.payment table.
select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    amount / 100 as amount,
    status,
    created as created_at

from {{source('stripe', 'payment')}}