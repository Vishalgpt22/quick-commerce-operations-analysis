-- CUSTOMER RATING 
SELECT
  delivery_speed,
  ROUND(AVG(customer_rating), 3) AS avg_customer_rating,
  COUNT(*) AS total_orders
FROM orders
GROUP BY delivery_speed;

-- CITY-LEVEL DELIVERY IMPACT
SELECT
  city,
  delivery_speed,
  ROUND(AVG(customer_rating), 2) AS avg_rating,
  COUNT(*) AS orders
FROM orders
GROUP BY city, delivery_speed
ORDER BY city, delivery_speed;

-- DISCOUNT EFFECTIVENESS
SELECT
  discount_flag,
  ROUND(AVG(order_value), 2) AS avg_order_value,
  ROUND(AVG(customer_rating), 2) AS avg_rating,
  COUNT(*) AS orders
FROM orders
GROUP BY discount_flag;

-- DELIVERY EFFICIENCY VS DISTANCE
SELECT
  ROUND(distance_km, 0) AS distance_bucket,
  ROUND(AVG(delivery_time_min), 1) AS avg_delivery_time,
  COUNT(*) AS orders
FROM orders
GROUP BY distance_bucket
ORDER BY distance_bucket;
