{{ config(
    schema='L1_STAGE'
) }}
SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at
FROM
    {{ source('landing', 'orderitems') }}