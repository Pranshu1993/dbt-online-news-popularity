select *
from {{ source('raw', 'online_news_popularity') }}