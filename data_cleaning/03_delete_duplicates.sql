DELETE FROM amazon_laptops_staging
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER(PARTITION BY product_title ORDER BY id) as numer_wiersza
        FROM amazon_laptops_staging
    ) subquery
    WHERE numer_wiersza > 1
);