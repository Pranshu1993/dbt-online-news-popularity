select
    url,
    shares,
    case
        when shares > 2000 then 'viral'
        when shares > 1000 then 'medium'
        else 'low'
    end as popularity_label
from {{ ref('stg_online_news_popularity') }}
