select
    url,
    num_imgs + num_videos as total_media,
    num_hrefs + num_self_hrefs as total_links
from {{ ref('stg_online_news_popularity') }}
