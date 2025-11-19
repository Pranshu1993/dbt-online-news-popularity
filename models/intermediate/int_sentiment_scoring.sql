select
    url,
    title_sentiment_polarity,
    global_sentiment_polarity,
    (title_sentiment_polarity + global_sentiment_polarity)/2.0 as sentiment_score
from {{ ref('stg_online_news_popularity') }}
