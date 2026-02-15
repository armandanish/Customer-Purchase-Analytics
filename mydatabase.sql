-- SELECT COUNT(*) AS total_customers FROM customer_data;
-- SELECT AVG(purchase_amount) AS avg_purchase FROM customer_data;
-- SELECT gender, AVG(purchase_amount) AS avg_spent FROM customer_data GROUP BY gender;
-- SELECT engagement_with_ads, AVG(purchase_amount) AS avg_purchase FROM customer_data GROUP BY engagement_with_ads;
-- SELECT * FROM customer_data ORDER BY purchase_amount DESC LIMIT 10;
-- SELECT social_media_influence, AVG(purchase_amount) AS avg_purchase FROM customer_data GROUP BY social_media_influence ORDER BY avg_purchase DESC;
SELECT
  CASE
    WHEN age < 25 THEN '18-24'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    ELSE '45+'
  END AS age_group,
  AVG(purchase_amount) AS avg_purchase 
FROM customer_data
GROUP BY age_group
ORDER BY avg_purchase DESC;
