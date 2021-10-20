{% macro get_organic_tweet_report_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "app_clicks", "datatype": dbt_utils.type_int()},
    {"name": "card_engagements", "datatype": dbt_utils.type_int()},
    {"name": "carousel_swipes", "datatype": dbt_utils.type_int()},
    {"name": "clicks", "datatype": dbt_utils.type_int()},
    {"name": "date", "datatype": dbt_utils.type_timestamp()},
    {"name": "engagements", "datatype": dbt_utils.type_int()},
    {"name": "follows", "datatype": dbt_utils.type_int()},
    {"name": "impressions", "datatype": dbt_utils.type_int()},
    {"name": "likes", "datatype": dbt_utils.type_int()},
    {"name": "organic_tweet_id", "datatype": dbt_utils.type_string()},
    {"name": "placement", "datatype": dbt_utils.type_string()},
    {"name": "poll_card_vote", "datatype": dbt_utils.type_int()},
    {"name": "qualified_impressions", "datatype": dbt_utils.type_int()},
    {"name": "replies", "datatype": dbt_utils.type_int()},
    {"name": "retweets", "datatype": dbt_utils.type_int()},
    {"name": "tweets_send", "datatype": dbt_utils.type_int()},
    {"name": "unfollows", "datatype": dbt_utils.type_int()},
    {"name": "url_clicks", "datatype": dbt_utils.type_int()},
    {"name": "video_15_s_views", "datatype": dbt_utils.type_int()},
    {"name": "video_3_s_100_pct_views", "datatype": dbt_utils.type_int()},
    {"name": "video_6_s_views", "datatype": dbt_utils.type_int()},
    {"name": "video_content_starts", "datatype": dbt_utils.type_int()},
    {"name": "video_cta_clicks", "datatype": dbt_utils.type_int()},
    {"name": "video_total_views", "datatype": dbt_utils.type_int()},
    {"name": "video_views_100", "datatype": dbt_utils.type_int()},
    {"name": "video_views_25", "datatype": dbt_utils.type_int()},
    {"name": "video_views_50", "datatype": dbt_utils.type_int()},
    {"name": "video_views_75", "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
