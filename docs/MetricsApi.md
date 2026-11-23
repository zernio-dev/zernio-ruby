# Zernio::MetricsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_metrics**](MetricsApi.md#get_account_metrics) | **GET** /v1/metrics/accounts | Read follower and post totals per account, platform or scope over time |
| [**get_ad_account_metrics**](MetricsApi.md#get_ad_account_metrics) | **GET** /v1/metrics/ad-accounts | Read the uploaded results summed across ad accounts |
| [**get_ad_metrics**](MetricsApi.md#get_ad_metrics) | **GET** /v1/metrics/ads | Read ad metrics by id, or one ad day by day with breakdowns |
| [**get_campaign_metrics**](MetricsApi.md#get_campaign_metrics) | **GET** /v1/metrics/campaigns | Read the delivery metrics or the uploaded results of each campaign over a window |
| [**get_inbox_metrics**](MetricsApi.md#get_inbox_metrics) | **GET** /v1/metrics/inbox | Read message volume and response times |
| [**get_insight_metrics**](MetricsApi.md#get_insight_metrics) | **GET** /v1/metrics/insights | Read live account or post insights from the platform |
| [**get_metrics_catalog**](MetricsApi.md#get_metrics_catalog) | **GET** /v1/metrics/catalog | List the metrics, groupings and limits of each metrics endpoint |
| [**get_post_metrics**](MetricsApi.md#get_post_metrics) | **GET** /v1/metrics/posts | Read post metrics by id, day by day, as a list, or grouped |
| [**query_google_ads**](MetricsApi.md#query_google_ads) | **POST** /v1/metrics/platform-queries/google-ads | Run a Google Ads Query Language search on one customer |
| [**query_google_analytics**](MetricsApi.md#query_google_analytics) | **POST** /v1/metrics/platform-queries/google-analytics | Run a GA4 standard or realtime report on one property |
| [**query_meta_ads**](MetricsApi.md#query_meta_ads) | **POST** /v1/metrics/platform-queries/meta-ads | Run a Meta Marketing API insights query on one ad account |
| [**query_tik_tok_ads**](MetricsApi.md#query_tik_tok_ads) | **POST** /v1/metrics/platform-queries/tiktok-ads | Run a TikTok Marketing API report on one advertiser |


## get_account_metrics

> <AccountMetricsResponse> get_account_metrics(opts)

Read follower and post totals per account, platform or scope over time

Reads followers, the account counters the platform reports (media count, video count...) and the totals of the posts each account published, per account, per platform or for the whole scope, for the whole window or by day, week or month.  - Scope: exactly one of `accountId` (up to 25) or `profileId` (one, with an optional `platform`). - `groupBy`: `account` (the default, one row per account and period), `platform` or `none`. - `granularity`: `total` (the default), `day`, `week` (rows start on Monday) or `month`. A row's `date` is the start of its period, never before `fromDate`. - `attribution`: `publish` (the default) counts each post on the day it was published; `received` counts each interaction on the day it arrived, for windows up to 92 days. - `granularity=week&groupBy=platform&metrics=postCount,engagementRate`: how many posts each platform got per week and their pooled engagement rate. The newer way to read `GET /v1/analytics/posting-frequency`.  Without `fromDate` and `toDate` it reads the last 90 days; the window is at most 366 days. Followers are one value per day, taken at 02:00 UTC. `GET /v1/metrics/catalog?entity=accounts` lists every metric with the platforms that report it.  Each team has an analytics compute budget of 24 seconds per 30-second window across these reads: a request that would pass it is refused with 429 `details.scope: team_budget` before it runs.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
opts = {
  account_id: 'account_id_example', # String | Comma-separated account ids, up to 25.
  profile_id: 'profile_id_example', # String | One profile id.
  metrics: 'metrics_example', # String | Comma-separated metric names from the catalog. Defaults to every metric.
  group_by: 'group_by_example', # String | Comma-separated groupings from the catalog, at most 2.
  from_date: Date.parse('2013-10-20'), # Date | First day, inclusive (YYYY-MM-DD, UTC).
  to_date: Date.parse('2013-10-20'), # Date | Last day, inclusive (YYYY-MM-DD, UTC).
  platform: 'tiktok', # String | Only with profileId.
  granularity: 'total', # String | 
  attribution: 'publish', # String | 
  limit: 56, # Integer | Rows per page, 50 by default, 100 at most.
  cursor: 'cursor_example' # String | pagination.nextCursor of the previous page, sent with the same query.
}

begin
  # Read follower and post totals per account, platform or scope over time
  result = api_instance.get_account_metrics(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_account_metrics: #{e}"
end
```

#### Using the get_account_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountMetricsResponse>, Integer, Hash)> get_account_metrics_with_http_info(opts)

```ruby
begin
  # Read follower and post totals per account, platform or scope over time
  data, status_code, headers = api_instance.get_account_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_account_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Comma-separated account ids, up to 25. | [optional] |
| **profile_id** | **String** | One profile id. | [optional] |
| **metrics** | **String** | Comma-separated metric names from the catalog. Defaults to every metric. | [optional] |
| **group_by** | **String** | Comma-separated groupings from the catalog, at most 2. | [optional] |
| **from_date** | **Date** | First day, inclusive (YYYY-MM-DD, UTC). | [optional] |
| **to_date** | **Date** | Last day, inclusive (YYYY-MM-DD, UTC). | [optional] |
| **platform** | **String** | Only with profileId. | [optional] |
| **granularity** | **String** |  | [optional][default to &#39;total&#39;] |
| **attribution** | **String** |  | [optional][default to &#39;publish&#39;] |
| **limit** | **Integer** | Rows per page, 50 by default, 100 at most. | [optional][default to 50] |
| **cursor** | **String** | pagination.nextCursor of the previous page, sent with the same query. | [optional] |

### Return type

[**AccountMetricsResponse**](AccountMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_account_metrics

> <AdAccountMetricsResponse> get_ad_account_metrics(from_date, to_date, opts)

Read the uploaded results summed across ad accounts

Sums each result metric you uploaded across ad accounts (every ad account the key can read, or the platform ids in `adAccountId`) over `fromDate` to `toDate` (both required, at most 400 days), with the same metrics as `GET /v1/metrics/campaigns`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
from_date = Date.parse('2013-10-20') # Date | First day, inclusive.
to_date = Date.parse('2013-10-20') # Date | Last day, inclusive. The range is at most 400 days.
opts = {
  ad_account_id: 'ad_account_id_example' # String | Comma-separated platform ad account ids. Defaults to every ad account the key sees.
}

begin
  # Read the uploaded results summed across ad accounts
  result = api_instance.get_ad_account_metrics(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_ad_account_metrics: #{e}"
end
```

#### Using the get_ad_account_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdAccountMetricsResponse>, Integer, Hash)> get_ad_account_metrics_with_http_info(from_date, to_date, opts)

```ruby
begin
  # Read the uploaded results summed across ad accounts
  data, status_code, headers = api_instance.get_ad_account_metrics_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdAccountMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_ad_account_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** | First day, inclusive. |  |
| **to_date** | **Date** | Last day, inclusive. The range is at most 400 days. |  |
| **ad_account_id** | **String** | Comma-separated platform ad account ids. Defaults to every ad account the key sees. | [optional] |

### Return type

[**AdAccountMetricsResponse**](AdAccountMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_metrics

> <AdMetricsResponse> get_ad_metrics(ad_id, opts)

Read ad metrics by id, or one ad day by day with breakdowns

Reads the delivery and conversion metrics Zernio synced from the ad networks for up to 100 Zernio ad ids (`adId`, as `GET /v1/ads` returns them). Ids you cannot read come back in `meta.missingIds`.  - `granularity=day` with one ad: one point per day. - `breakdowns` with one ad: read live from the network (age, gender, country, placement...), with `attributionWindows` for Meta.  Without `fromDate` and `toDate` it reads the last 90 days; the window is at most 730 days. `meta.backfillPending` is true while older days are still being fetched. Money is in the ad account currency (`currency`). `GET /v1/metrics/catalog?entity=ads` lists every metric with the networks that report it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
ad_id = 'ad_id_example' # String | Comma-separated Zernio ad ids, up to 100.
opts = {
  granularity: 'total', # String | day reads one ad, one point per day.
  from_date: Date.parse('2013-10-20'), # Date | Without fromDate and toDate, the last 90 days.
  to_date: Date.parse('2013-10-20'), # Date | Last day, inclusive (YYYY-MM-DD, UTC).
  breakdowns: 'breakdowns_example', # String | Comma-separated breakdowns, read live from the platform. One ad only.
  attribution_windows: 'attribution_windows_example' # String | Meta attribution windows for the breakdowns, comma-separated.
}

begin
  # Read ad metrics by id, or one ad day by day with breakdowns
  result = api_instance.get_ad_metrics(ad_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_ad_metrics: #{e}"
end
```

#### Using the get_ad_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdMetricsResponse>, Integer, Hash)> get_ad_metrics_with_http_info(ad_id, opts)

```ruby
begin
  # Read ad metrics by id, or one ad day by day with breakdowns
  data, status_code, headers = api_instance.get_ad_metrics_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_ad_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Comma-separated Zernio ad ids, up to 100. |  |
| **granularity** | **String** | day reads one ad, one point per day. | [optional][default to &#39;total&#39;] |
| **from_date** | **Date** | Without fromDate and toDate, the last 90 days. | [optional] |
| **to_date** | **Date** | Last day, inclusive (YYYY-MM-DD, UTC). | [optional] |
| **breakdowns** | **String** | Comma-separated breakdowns, read live from the platform. One ad only. | [optional] |
| **attribution_windows** | **String** | Meta attribution windows for the breakdowns, comma-separated. | [optional] |

### Return type

[**AdMetricsResponse**](AdMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_metrics

> <CampaignMetricsResponse> get_campaign_metrics(from_date, to_date, opts)

Read the delivery metrics or the uploaded results of each campaign over a window

Without `metrics`, sums per campaign each result metric you uploaded (one key per metric, as `GET /v1/ads/campaign-results/metrics` lists them), with `cac_percent`, `cost_per_sale`, `cost_per_qualified_lead`, `lead_to_sale` and `qualified_rate` next to them, over `fromDate` to `toDate` (both required, at most 400 days). Filter with `campaignId` (platform campaign ids); pages with `cursor`.  With `metrics` (for example `metrics=spend,impressions,clicks,ctr`), sums the delivery metrics of every ad of each campaign in `campaignId` (required, up to 100) from the stored daily rows. Every campaign comes on one page with its `currency`, and `granularity=day` adds one point per day.  A query reads at most 9,200 campaign days (100 campaigns for 92 days, 23 for 400) and answers 422 `query_too_large` beyond that. Breakdowns stay live in the platform queries, such as `POST /v1/metrics/platform-queries/meta-ads`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
from_date = Date.parse('2013-10-20') # Date | First day, inclusive.
to_date = Date.parse('2013-10-20') # Date | Last day, inclusive. The range is at most 400 days.
opts = {
  limit: 56, # Integer | Rows per page, 50 by default, 100 at most.
  cursor: 'cursor_example', # String | pagination.nextCursor of the previous page, sent with the same query.
  campaign_id: 'campaign_id_example', # String | Comma-separated platform campaign ids. Required with metrics, up to 100.
  metrics: 'metrics_example', # String | Comma-separated delivery metrics, as GET /v1/metrics/catalog?entity=campaigns lists them (spend, impressions, reach, clicks, ctr, cpc, cpm, conversions, roas, actions, funnel, video counts...).
  granularity: 'total' # String | day adds one point per day to each campaign. Needs metrics.
}

begin
  # Read the delivery metrics or the uploaded results of each campaign over a window
  result = api_instance.get_campaign_metrics(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_campaign_metrics: #{e}"
end
```

#### Using the get_campaign_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignMetricsResponse>, Integer, Hash)> get_campaign_metrics_with_http_info(from_date, to_date, opts)

```ruby
begin
  # Read the delivery metrics or the uploaded results of each campaign over a window
  data, status_code, headers = api_instance.get_campaign_metrics_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_campaign_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** | First day, inclusive. |  |
| **to_date** | **Date** | Last day, inclusive. The range is at most 400 days. |  |
| **limit** | **Integer** | Rows per page, 50 by default, 100 at most. | [optional][default to 50] |
| **cursor** | **String** | pagination.nextCursor of the previous page, sent with the same query. | [optional] |
| **campaign_id** | **String** | Comma-separated platform campaign ids. Required with metrics, up to 100. | [optional] |
| **metrics** | **String** | Comma-separated delivery metrics, as GET /v1/metrics/catalog?entity&#x3D;campaigns lists them (spend, impressions, reach, clicks, ctr, cpc, cpm, conversions, roas, actions, funnel, video counts...). | [optional] |
| **granularity** | **String** | day adds one point per day to each campaign. Needs metrics. | [optional][default to &#39;total&#39;] |

### Return type

[**CampaignMetricsResponse**](CampaignMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_metrics

> <InboxMetricsResponse> get_inbox_metrics(opts)

Read message volume and response times

Counts messages received, sent, read and failed, conversations and replies, and response times (median, p90, p99, mean, min, max) across the inbox, from the messages Zernio logged.  - Scope: `conversationId` (up to 25, one row per conversation), `accountId` (up to 25) or one `profileId`. Without a scope, every account the key can read. - `groupBy` (at most 2): `account`, `platform`, `source`, `hourOfWeek` (one row per UTC weekday and hour), `responseTimeBucket` (with `metrics=replied`) or `conversation` (paged with `cursor`, `include=total` counts up to 100,000). - `granularity`: `total` (the default), `day` or `week`. - `include=account` adds usernames to account rows; `include=conversation` adds the participant and last message to conversation rows.  Response time metrics are returned only when named in `metrics`. Without `fromDate` and `toDate` it reads the last 30 days; the window is at most 90 days. `GET /v1/metrics/catalog?entity=inbox` lists every metric, sort and groupBy.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
opts = {
  conversation_id: 'conversation_id_example', # String | Comma-separated conversation ids (Zernio or platform), up to 25: one row per conversation.
  account_id: 'account_id_example', # String | Comma-separated account ids, up to 25.
  profile_id: 'profile_id_example', # String | One profile id.
  metrics: 'metrics_example', # String | Comma-separated metric names from the catalog. Defaults to the counts; response times only when named.
  group_by: 'group_by_example', # String | Comma-separated groupings from the catalog, at most 2: account, conversation, platform, source, hourOfWeek, responseTimeBucket.
  from_date: Date.parse('2013-10-20'), # Date | First day, inclusive (YYYY-MM-DD, UTC). Defaults to 30 days before toDate. The window is at most 90 days.
  to_date: Date.parse('2013-10-20'), # Date | Last day, inclusive (YYYY-MM-DD, UTC). Defaults to today.
  platform: 'platform_example', # String | A messaging platform, such as instagram or whatsapp.
  source: 'source_example', # String | Only messages sent from this source, such as api or broadcast. Not with response time metrics.
  granularity: 'total', # String | 
  sort: 'sort_example', # String | A sort from the catalog, such as messages-desc. With granularity=total.
  include: 'include_example', # String | Comma-separated includes from the catalog: account, conversation, total.
  limit: 56, # Integer | Rows returned with groupBy=account (10 by default, 100 at most) or groupBy=conversation (50 by default, 1,000 at most).
  cursor: 'cursor_example' # String | With groupBy=conversation: pagination.nextCursor of the previous page.
}

begin
  # Read message volume and response times
  result = api_instance.get_inbox_metrics(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_inbox_metrics: #{e}"
end
```

#### Using the get_inbox_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboxMetricsResponse>, Integer, Hash)> get_inbox_metrics_with_http_info(opts)

```ruby
begin
  # Read message volume and response times
  data, status_code, headers = api_instance.get_inbox_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboxMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_inbox_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Comma-separated conversation ids (Zernio or platform), up to 25: one row per conversation. | [optional] |
| **account_id** | **String** | Comma-separated account ids, up to 25. | [optional] |
| **profile_id** | **String** | One profile id. | [optional] |
| **metrics** | **String** | Comma-separated metric names from the catalog. Defaults to the counts; response times only when named. | [optional] |
| **group_by** | **String** | Comma-separated groupings from the catalog, at most 2: account, conversation, platform, source, hourOfWeek, responseTimeBucket. | [optional] |
| **from_date** | **Date** | First day, inclusive (YYYY-MM-DD, UTC). Defaults to 30 days before toDate. The window is at most 90 days. | [optional] |
| **to_date** | **Date** | Last day, inclusive (YYYY-MM-DD, UTC). Defaults to today. | [optional] |
| **platform** | **String** | A messaging platform, such as instagram or whatsapp. | [optional] |
| **source** | **String** | Only messages sent from this source, such as api or broadcast. Not with response time metrics. | [optional] |
| **granularity** | **String** |  | [optional][default to &#39;total&#39;] |
| **sort** | **String** | A sort from the catalog, such as messages-desc. With granularity&#x3D;total. | [optional] |
| **include** | **String** | Comma-separated includes from the catalog: account, conversation, total. | [optional] |
| **limit** | **Integer** | Rows returned with groupBy&#x3D;account (10 by default, 100 at most) or groupBy&#x3D;conversation (50 by default, 1,000 at most). | [optional] |
| **cursor** | **String** | With groupBy&#x3D;conversation: pagination.nextCursor of the previous page. | [optional] |

### Return type

[**InboxMetricsResponse**](InboxMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insight_metrics

> <InsightMetricsResponse> get_insight_metrics(account_id, opts)

Read live account or post insights from the platform

Reads insights the platform computes and Zernio does not store (page views, profile visits, watch time, audience demographics...), live from the platform, for one account or one of its posts (`platformPostId`).  Platforms: Facebook, Instagram, LinkedIn, TikTok, YouTube, Pinterest, Google Business and Google Search Console. Another platform answers 400 on `accountId`, a disconnected account 401 `account_disconnected`, and a platform error the platform's own code under `platformError`.  - `granularity`: `total` (the default) or `day`. - `groupBy=demographic` with one metric and `breakdown` (age, gender, country, city...): one row per audience segment. LinkedIn: organizations only. - `groupBy=hour`: Instagram followers online per day and hour of the last 30 days. - `groupBy=keyword`: Google Business search keywords, one row per keyword, paged with `cursor`.  Google Search Console answers clicks, impressions, ctr (0 to 1) and position (1 is the top), final days only:  - Without groupBy: the site totals. `granularity=day` adds the date. - `groupBy` combines any of `query`, `page`, `country` and `device` (`groupBy=query,country`): one row per combination, most clicks first, with each value in `dimensions`. - Pages with `limit` (up to 25,000, 1,000 by default) and `cursor`. - `include=retentionCurve` with a YouTube `platformPostId`: the audience retention curve.  Without `fromDate` and `toDate` it reads the last 30 days; the window is at most 541 days. `GET /v1/metrics/catalog?entity=insights&platform=...` lists each platform's metrics. Metrics the platform cannot answer for this account are listed in `meta.unavailableMetrics` instead of failing the request.  Each request calls the platform: read each account every few minutes at most. These reads share the `account-insights` cap and the 120 reads per hour of one account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
account_id = 'account_id_example' # String | One account id.
opts = {
  metrics: 'metrics_example', # String | Comma-separated metric names (up to 25). Defaults to the platform's default metrics. `GET /v1/metrics/catalog?entity=insights&platform=...` lists them.
  platform_post_id: 'platform_post_id_example', # String | One post of the account, by its platform id: answers the post's live insights instead of the account's.
  granularity: 'total', # String | Defaults to total; groupBy=hour answers per day.
  group_by: 'group_by_example', # String | demographic: audience segments (age, gender, country...). hour: Instagram followers online per day and hour, last 30 days. keyword: Google Business search keywords per month. query, page, country, device: Google Search Console, combined with commas (groupBy=query,country).
  breakdown: 'breakdown_example', # String | With groupBy=demographic: comma-separated segments. Defaults to the platform's default segments.
  timeframe: 'this_week', # String | Instagram demographics only. Defaults to this_month.
  cursor: 'cursor_example', # String | With groupBy=keyword or a Search Console account: pagination.nextCursor of the previous page, sent with the same query.
  limit: 56, # Integer | Search Console accounts only: rows per page. Defaults to 1,000.
  include: 'include_example', # String | With platformPostId on YouTube: retentionCurve adds the audience retention curve.
  from_date: Date.parse('2013-10-20'), # Date | First day, inclusive (YYYY-MM-DD, UTC). Defaults to 30 days before toDate. The window is at most 541 days.
  to_date: Date.parse('2013-10-20') # Date | Last day, inclusive (YYYY-MM-DD, UTC). Defaults to today.
}

begin
  # Read live account or post insights from the platform
  result = api_instance.get_insight_metrics(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_insight_metrics: #{e}"
end
```

#### Using the get_insight_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightMetricsResponse>, Integer, Hash)> get_insight_metrics_with_http_info(account_id, opts)

```ruby
begin
  # Read live account or post insights from the platform
  data, status_code, headers = api_instance.get_insight_metrics_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_insight_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | One account id. |  |
| **metrics** | **String** | Comma-separated metric names (up to 25). Defaults to the platform&#39;s default metrics. &#x60;GET /v1/metrics/catalog?entity&#x3D;insights&amp;platform&#x3D;...&#x60; lists them. | [optional] |
| **platform_post_id** | **String** | One post of the account, by its platform id: answers the post&#39;s live insights instead of the account&#39;s. | [optional] |
| **granularity** | **String** | Defaults to total; groupBy&#x3D;hour answers per day. | [optional] |
| **group_by** | **String** | demographic: audience segments (age, gender, country...). hour: Instagram followers online per day and hour, last 30 days. keyword: Google Business search keywords per month. query, page, country, device: Google Search Console, combined with commas (groupBy&#x3D;query,country). | [optional] |
| **breakdown** | **String** | With groupBy&#x3D;demographic: comma-separated segments. Defaults to the platform&#39;s default segments. | [optional] |
| **timeframe** | **String** | Instagram demographics only. Defaults to this_month. | [optional] |
| **cursor** | **String** | With groupBy&#x3D;keyword or a Search Console account: pagination.nextCursor of the previous page, sent with the same query. | [optional] |
| **limit** | **Integer** | Search Console accounts only: rows per page. Defaults to 1,000. | [optional] |
| **include** | **String** | With platformPostId on YouTube: retentionCurve adds the audience retention curve. | [optional] |
| **from_date** | **Date** | First day, inclusive (YYYY-MM-DD, UTC). Defaults to 30 days before toDate. The window is at most 541 days. | [optional] |
| **to_date** | **Date** | Last day, inclusive (YYYY-MM-DD, UTC). Defaults to today. | [optional] |

### Return type

[**InsightMetricsResponse**](InsightMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metrics_catalog

> <MetricsCatalogResponse> get_metrics_catalog(opts)

List the metrics, groupings and limits of each metrics endpoint

Describes each metrics endpoint (`GET /v1/metrics/posts`, `/accounts`, `/insights`, `/inbox`, `/ads`, `/campaigns` and `/ad-accounts`): the scope it needs, the most ids per scope, the longest and default date window, the granularities, sorts, includes, groupBy values, attributions and every metric with its unit, platforms and freshness.  Read it once and cache it: it changes only when Zernio adds a metric or a grouping. Filter with `entity` and `platform` to get only what one screen needs. No analytics add-on is needed to read it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
opts = {
  entity: 'posts', # String | Only this entity.
  platform: 'tiktok' # String | Only the metrics, sorts, includes and groupBy values this platform has. Every entity is still listed.
}

begin
  # List the metrics, groupings and limits of each metrics endpoint
  result = api_instance.get_metrics_catalog(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_catalog: #{e}"
end
```

#### Using the get_metrics_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsCatalogResponse>, Integer, Hash)> get_metrics_catalog_with_http_info(opts)

```ruby
begin
  # List the metrics, groupings and limits of each metrics endpoint
  data, status_code, headers = api_instance.get_metrics_catalog_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsCatalogResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** | Only this entity. | [optional] |
| **platform** | **String** | Only the metrics, sorts, includes and groupBy values this platform has. Every entity is still listed. | [optional] |

### Return type

[**MetricsCatalogResponse**](MetricsCatalogResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_post_metrics

> <PostMetricsResponse> get_post_metrics(opts)

Read post metrics by id, day by day, as a list, or grouped

Reads the metrics Zernio synced for published posts, Zernio posts and posts published outside Zernio alike. Send exactly one scope: `postId`, `platformPostId`, `accountId` or `profileId`, or read the change feed with `changedSince`.  - **By id** (`postId` or `platformPostId`, up to 100): one row per publication. Ids that match no post you can read come back in `meta.missingIds`. - **One post day by day**: one id with `granularity=day`. - **A list** (`accountId` up to 25, or one `profileId` with an optional `platform`): posts published in the window, newest first, paged with `cursor`. `sort` orders it by a metric (`likes-desc`, `engagement-desc`...), up to the 1,000 best posts. `include=total` counts the list on the first page (windows up to 92 days).  Grouped with `groupBy`:  - `post`: sums the platforms each post id was published to into one row (by id, `granularity=total`). - `dayOfWeek,hour`: one row per UTC weekday and hour the posts were published, summing each post's latest metrics. The newer way to read `GET /v1/analytics/best-time`. - `postAge`: the share of its final engagement a post had reached at each age (0-6h to 30d+), `engagementShareOfFinal`. The newer way to read `GET /v1/analytics/content-decay`. Defaults to the last 60 days. - `format`: one row per format (image, video, carousel, text). The newer way to read `GET /v1/analytics/format-breakdown`.  `dayOfWeek,hour`, `postAge` and `format` take a list scope (`accountId` or `profileId`), `granularity=total`, windows up to 92 days, and answer in one page.  Includes on rows read by id or in a list (`include`, comma-separated):  - `post`: content, media and publishing details. - `samples`: one reading per analytics sync, oldest first, the newest 500 per post, narrowed by `fromDate` and `toDate` on the sync time. Posts read by `postId` or `platformPostId` only, up to 10, with `granularity=total` and no `groupBy`. The newer way to read `GET /v1/analytics/samples`. - `authenticity`: the stored authenticity score with its confidence, reasons, model version, sample count and when it was computed; null until the post has been scored. The `authenticityScore` metric carries the score alone (0 to 100). - `impressionSources`, `audienceTypes`, `audienceCountries`, `retentionCurve`: breakdowns on the platforms that report them.  Change feed with `changedSince`:  - `changedSince=now` answers no rows and a starting cursor; send each `pagination.nextCursor` back as `changedSince` to get one `PostMetricChange` row per post whose metrics changed since then, oldest change first. - It reads every account the key can read, narrowed with one `profileId` and `platform`. It takes `metrics` from the feed's list and the breakdown includes, nothing else. - Changes are kept 7 days and a cursor older than 6 days is refused. The feed and its cursors are the same as `GET /v1/analytics/delta`, of which it is the newer way to read.  Without `fromDate` and `toDate` a list reads the last 90 days; the window is at most 366 days. `GET /v1/metrics/catalog?entity=posts` lists every metric, sort, include and groupBy, with the platforms that report each. A metric is `null` when the platform does not report it or the post has no snapshot yet.  Each team has an analytics compute budget of 24 seconds per 30-second window across these reads, on top of the per-group cap: a request that would pass it is refused with 429 `details.scope: team_budget` before it runs.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
opts = {
  post_id: 'post_id_example', # String | Comma-separated post ids (Zernio or external), up to 100.
  platform_post_id: 'platform_post_id_example', # String | Comma-separated ids the platform gave the posts (a TikTok video id, a tweet id), up to 100.
  account_id: 'account_id_example', # String | Comma-separated account ids, up to 25.
  profile_id: 'profile_id_example', # String | One profile id.
  metrics: 'metrics_example', # String | Comma-separated metric names from the catalog. Defaults to every metric.
  group_by: 'group_by_example', # String | Comma-separated groupings from the catalog, at most 2.
  from_date: Date.parse('2013-10-20'), # Date | First day, inclusive (YYYY-MM-DD, UTC).
  to_date: Date.parse('2013-10-20'), # Date | Last day, inclusive (YYYY-MM-DD, UTC).
  platform: 'tiktok', # String | Only with profileId.
  granularity: 'total', # String | day reads one post.
  origin: 'all', # String | Lists only. Defaults to all.
  sort: 'sort_example', # String | A sort from the catalog, such as published-desc or likes-desc.
  include: 'include_example', # String | Comma-separated includes from the catalog.
  changed_since: 'changed_since_example', # String | now (no rows, the starting cursor) or the previous pagination.nextCursor: one row per post whose metrics changed since, oldest first, across every account the key reads. Narrow with profileId and platform. Changes are kept 7 days; cursors older than 6 days are refused.
  limit: 56, # Integer | Rows per page, 50 by default, 100 at most.
  cursor: 'cursor_example' # String | pagination.nextCursor of the previous page, sent with the same query.
}

begin
  # Read post metrics by id, day by day, as a list, or grouped
  result = api_instance.get_post_metrics(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_post_metrics: #{e}"
end
```

#### Using the get_post_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostMetricsResponse>, Integer, Hash)> get_post_metrics_with_http_info(opts)

```ruby
begin
  # Read post metrics by id, day by day, as a list, or grouped
  data, status_code, headers = api_instance.get_post_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostMetricsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->get_post_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Comma-separated post ids (Zernio or external), up to 100. | [optional] |
| **platform_post_id** | **String** | Comma-separated ids the platform gave the posts (a TikTok video id, a tweet id), up to 100. | [optional] |
| **account_id** | **String** | Comma-separated account ids, up to 25. | [optional] |
| **profile_id** | **String** | One profile id. | [optional] |
| **metrics** | **String** | Comma-separated metric names from the catalog. Defaults to every metric. | [optional] |
| **group_by** | **String** | Comma-separated groupings from the catalog, at most 2. | [optional] |
| **from_date** | **Date** | First day, inclusive (YYYY-MM-DD, UTC). | [optional] |
| **to_date** | **Date** | Last day, inclusive (YYYY-MM-DD, UTC). | [optional] |
| **platform** | **String** | Only with profileId. | [optional] |
| **granularity** | **String** | day reads one post. | [optional][default to &#39;total&#39;] |
| **origin** | **String** | Lists only. Defaults to all. | [optional] |
| **sort** | **String** | A sort from the catalog, such as published-desc or likes-desc. | [optional] |
| **include** | **String** | Comma-separated includes from the catalog. | [optional] |
| **changed_since** | **String** | now (no rows, the starting cursor) or the previous pagination.nextCursor: one row per post whose metrics changed since, oldest first, across every account the key reads. Narrow with profileId and platform. Changes are kept 7 days; cursors older than 6 days are refused. | [optional] |
| **limit** | **Integer** | Rows per page, 50 by default, 100 at most. | [optional][default to 50] |
| **cursor** | **String** | pagination.nextCursor of the previous page, sent with the same query. | [optional] |

### Return type

[**PostMetricsResponse**](PostMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_google_ads

> <PlatformQueryPage> query_google_ads(google_ads_platform_query_body)

Run a Google Ads Query Language search on one customer

Runs a GAQL `SELECT` on one Google Ads customer, read only. Without `adAccountId` it reads the connection's own customer.  Runs a native query on the platform with the account's own token and answers the platform's rows unchanged, with its own field names, plus its headers, counts and quota in `meta`. Use it for what `/v1/metrics/*` does not store; the stored metrics stay cheaper and faster.  - Up to 120 reads per hour per platform target (the Zernio account plus the ad account or property); past it, 429 with `details.scope` `platform_query_target`.  - Up to 10 queries in flight per team.  - A query must answer within 25 seconds.  - An account of another source answers 400 on `accountId` with the route it belongs to.  - The next page goes in `cursor`, from `pagination.nextCursor`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
google_ads_platform_query_body = Zernio::GoogleAdsPlatformQueryBody.new({account_id: 'account_id_example', query: 'query_example'}) # GoogleAdsPlatformQueryBody | 

begin
  # Run a Google Ads Query Language search on one customer
  result = api_instance.query_google_ads(google_ads_platform_query_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_google_ads: #{e}"
end
```

#### Using the query_google_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformQueryPage>, Integer, Hash)> query_google_ads_with_http_info(google_ads_platform_query_body)

```ruby
begin
  # Run a Google Ads Query Language search on one customer
  data, status_code, headers = api_instance.query_google_ads_with_http_info(google_ads_platform_query_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformQueryPage>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_google_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **google_ads_platform_query_body** | [**GoogleAdsPlatformQueryBody**](GoogleAdsPlatformQueryBody.md) |  |  |

### Return type

[**PlatformQueryPage**](PlatformQueryPage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_google_analytics

> <PlatformQueryPage> query_google_analytics(google_analytics_platform_query_body)

Run a GA4 standard or realtime report on one property

Runs a GA4 `standard` report over up to 4 date ranges, paged, or a `realtime` report on the last 30 minutes. Needs the Analytics add-on.  Runs a native query on the platform with the account's own token and answers the platform's rows unchanged, with its own field names, plus its headers, counts and quota in `meta`. Use it for what `/v1/metrics/*` does not store; the stored metrics stay cheaper and faster.  - Up to 120 reads per hour per platform target (the Zernio account plus the ad account or property); past it, 429 with `details.scope` `platform_query_target`.  - Up to 10 queries in flight per team.  - A query must answer within 25 seconds.  - An account of another source answers 400 on `accountId` with the route it belongs to.  - The next page goes in `cursor`, from `pagination.nextCursor`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
google_analytics_platform_query_body = Zernio::GoogleAnalyticsPlatformQueryBodyOneOf.new({report_type: 'standard', account_id: 'account_id_example', metrics: ['metrics_example']}) # GoogleAnalyticsPlatformQueryBody | 

begin
  # Run a GA4 standard or realtime report on one property
  result = api_instance.query_google_analytics(google_analytics_platform_query_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_google_analytics: #{e}"
end
```

#### Using the query_google_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformQueryPage>, Integer, Hash)> query_google_analytics_with_http_info(google_analytics_platform_query_body)

```ruby
begin
  # Run a GA4 standard or realtime report on one property
  data, status_code, headers = api_instance.query_google_analytics_with_http_info(google_analytics_platform_query_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformQueryPage>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_google_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **google_analytics_platform_query_body** | [**GoogleAnalyticsPlatformQueryBody**](GoogleAnalyticsPlatformQueryBody.md) |  |  |

### Return type

[**PlatformQueryPage**](PlatformQueryPage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_meta_ads

> <PlatformQueryPage> query_meta_ads(meta_ads_platform_query_body)

Run a Meta Marketing API insights query on one ad account

Reads Meta's insights for one ad account (`act_<n>`). Read its campaigns, ad sets or ads with `level` and `filtering` on the same ad account.  Runs a native query on the platform with the account's own token and answers the platform's rows unchanged, with its own field names, plus its headers, counts and quota in `meta`. Use it for what `/v1/metrics/*` does not store; the stored metrics stay cheaper and faster.  - Up to 120 reads per hour per platform target (the Zernio account plus the ad account or property); past it, 429 with `details.scope` `platform_query_target`.  - Up to 10 queries in flight per team.  - A query must answer within 25 seconds.  - An account of another source answers 400 on `accountId` with the route it belongs to.  - The next page goes in `cursor`, from `pagination.nextCursor`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
meta_ads_platform_query_body = Zernio::MetaAdsPlatformQueryBody.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # MetaAdsPlatformQueryBody | 

begin
  # Run a Meta Marketing API insights query on one ad account
  result = api_instance.query_meta_ads(meta_ads_platform_query_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_meta_ads: #{e}"
end
```

#### Using the query_meta_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformQueryPage>, Integer, Hash)> query_meta_ads_with_http_info(meta_ads_platform_query_body)

```ruby
begin
  # Run a Meta Marketing API insights query on one ad account
  data, status_code, headers = api_instance.query_meta_ads_with_http_info(meta_ads_platform_query_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformQueryPage>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_meta_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_ads_platform_query_body** | [**MetaAdsPlatformQueryBody**](MetaAdsPlatformQueryBody.md) |  |  |

### Return type

[**PlatformQueryPage**](PlatformQueryPage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_tik_tok_ads

> <PlatformQueryPage> query_tik_tok_ads(tik_tok_ads_platform_query_body)

Run a TikTok Marketing API report on one advertiser

Runs a synchronous TikTok report (`BASIC` or `AUDIENCE`) for one advertiser at the data level asked.  Runs a native query on the platform with the account's own token and answers the platform's rows unchanged, with its own field names, plus its headers, counts and quota in `meta`. Use it for what `/v1/metrics/*` does not store; the stored metrics stay cheaper and faster.  - Up to 120 reads per hour per platform target (the Zernio account plus the ad account or property); past it, 429 with `details.scope` `platform_query_target`.  - Up to 10 queries in flight per team.  - A query must answer within 25 seconds.  - An account of another source answers 400 on `accountId` with the route it belongs to.  - The next page goes in `cursor`, from `pagination.nextCursor`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MetricsApi.new
tik_tok_ads_platform_query_body = Zernio::TikTokAdsPlatformQueryBody.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', data_level: 'AUCTION_ADVERTISER', dimensions: ['dimensions_example'], metrics: ['metrics_example'], from_date: Date.today, to_date: Date.today}) # TikTokAdsPlatformQueryBody | 

begin
  # Run a TikTok Marketing API report on one advertiser
  result = api_instance.query_tik_tok_ads(tik_tok_ads_platform_query_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_tik_tok_ads: #{e}"
end
```

#### Using the query_tik_tok_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlatformQueryPage>, Integer, Hash)> query_tik_tok_ads_with_http_info(tik_tok_ads_platform_query_body)

```ruby
begin
  # Run a TikTok Marketing API report on one advertiser
  data, status_code, headers = api_instance.query_tik_tok_ads_with_http_info(tik_tok_ads_platform_query_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlatformQueryPage>
rescue Zernio::ApiError => e
  puts "Error when calling MetricsApi->query_tik_tok_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tik_tok_ads_platform_query_body** | [**TikTokAdsPlatformQueryBody**](TikTokAdsPlatformQueryBody.md) |  |  |

### Return type

[**PlatformQueryPage**](PlatformQueryPage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

