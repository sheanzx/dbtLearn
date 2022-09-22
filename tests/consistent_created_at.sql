
select *
from  {{ ref('dim_listings_cleansed') }} T1
JOIN  {{ ref('fct_reviews') }} T2 on T1.LISTING_ID=T2.LISTING_ID
where T1.CREATED_AT  >=T2.REVIEW_DATE
LIMIT 10