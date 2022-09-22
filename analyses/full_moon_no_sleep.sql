with mart_full_moon_reviews as (
    selecct * from {{ ref('full_moon_reviews')}}
)
select is_full_moon,
    review_sentiment,
    count(*) as ReviewCT
from mart_full_moon_reviews
group by is_full_moon,
    review_sentiment