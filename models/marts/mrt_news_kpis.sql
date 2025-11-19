select
    s.url,
    p.popularity_label,
    m.total_media,
    m.total_links,
    sent.sentiment_score,
    s.n_tokens_title,
    s.n_tokens_content,
    s.shares
from {{ ref('stg_online_news_popularity') }} s
left join {{ ref('int_media_engagement') }} m using (url)
left join {{ ref('int_sentiment_scoring') }} sent using (url)
left join {{ ref('int_popularity_labels') }} p using (url)