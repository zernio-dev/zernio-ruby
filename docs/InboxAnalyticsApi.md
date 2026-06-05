# Zernio::InboxAnalyticsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inbox_conversation_analytics**](InboxAnalyticsApi.md#get_inbox_conversation_analytics) | **GET** /v1/analytics/inbox/conversations/{conversationId} | Get analytics for a single conversation |
| [**get_inbox_heatmap**](InboxAnalyticsApi.md#get_inbox_heatmap) | **GET** /v1/analytics/inbox/heatmap | Get inbox day-of-week × hour-of-day heatmap |
| [**get_inbox_response_time**](InboxAnalyticsApi.md#get_inbox_response_time) | **GET** /v1/analytics/inbox/response-time | Get inbox response-time stats |
| [**get_inbox_source_breakdown**](InboxAnalyticsApi.md#get_inbox_source_breakdown) | **GET** /v1/analytics/inbox/source-breakdown | Get inbox source breakdown |
| [**get_inbox_top_accounts**](InboxAnalyticsApi.md#get_inbox_top_accounts) | **GET** /v1/analytics/inbox/top-accounts | Get top accounts by inbox volume |
| [**get_inbox_volume**](InboxAnalyticsApi.md#get_inbox_volume) | **GET** /v1/analytics/inbox/volume | Get inbox messaging volume |
| [**list_inbox_conversation_analytics**](InboxAnalyticsApi.md#list_inbox_conversation_analytics) | **GET** /v1/analytics/inbox/conversations | List conversations with inbox analytics |


## get_inbox_conversation_analytics

> <GetInboxConversationAnalytics200Response> get_inbox_conversation_analytics(conversation_id, from_date, opts)

Get analytics for a single conversation

Per-conversation inbox analytics. The inbox analog of /v1/analytics/post-timeline — one conversation, daily totals, source mix.  The {conversationId} path param accepts EITHER the Mongo `_id` of the Conversation document OR its `platformConversationId` (the same identity used by metadata.conversationId at ingest time). Ownership is verified in MongoDB against the caller's team before the Tinybird query fires.  Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
conversation_id = 'conversation_id_example' # String | Mongo _id or platformConversationId.
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20') # Date | 
}

begin
  # Get analytics for a single conversation
  result = api_instance.get_inbox_conversation_analytics(conversation_id, from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_conversation_analytics: #{e}"
end
```

#### Using the get_inbox_conversation_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxConversationAnalytics200Response>, Integer, Hash)> get_inbox_conversation_analytics_with_http_info(conversation_id, from_date, opts)

```ruby
begin
  # Get analytics for a single conversation
  data, status_code, headers = api_instance.get_inbox_conversation_analytics_with_http_info(conversation_id, from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxConversationAnalytics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_conversation_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Mongo _id or platformConversationId. |  |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |

### Return type

[**GetInboxConversationAnalytics200Response**](GetInboxConversationAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_heatmap

> <GetInboxHeatmap200Response> get_inbox_heatmap(from_date, opts)

Get inbox day-of-week × hour-of-day heatmap

Day-of-week × hour-of-day breakdown of inbox messages. Buckets are sparse — only cells with at least one event are returned; clients zero-fill the rest to render the full 7×24 grid. The `dow` field follows ClickHouse's `toDayOfWeek` convention (1 = Monday … 7 = Sunday). Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20'), # Date | 
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | 
  account_id: 'account_id_example', # String | 
  source: 'source_example', # String | 
  action: 'message.received' # String | Narrow to a single event type. \"all\" or omitted means no filter.
}

begin
  # Get inbox day-of-week × hour-of-day heatmap
  result = api_instance.get_inbox_heatmap(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_heatmap: #{e}"
end
```

#### Using the get_inbox_heatmap_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxHeatmap200Response>, Integer, Hash)> get_inbox_heatmap_with_http_info(from_date, opts)

```ruby
begin
  # Get inbox day-of-week × hour-of-day heatmap
  data, status_code, headers = api_instance.get_inbox_heatmap_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxHeatmap200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_heatmap_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **action** | **String** | Narrow to a single event type. \&quot;all\&quot; or omitted means no filter. | [optional] |

### Return type

[**GetInboxHeatmap200Response**](GetInboxHeatmap200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_response_time

> <GetInboxResponseTime200Response> get_inbox_response_time(from_date, opts)

Get inbox response-time stats

Time-to-first-response stats. Pairs each received message with the next sent message in the same conversation and reports the delta as both summary statistics and a fixed-bucket histogram suited for the analytics page's TTR chart.  `sampleSize` reflects only conversations that received AND got a reply in the window — received-but-never-answered conversations are excluded. Compare against /v1/analytics/inbox/volume's `summary.received` to compute reply rate.  Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20'), # Date | 
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | 
  account_id: 'account_id_example' # String | 
}

begin
  # Get inbox response-time stats
  result = api_instance.get_inbox_response_time(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_response_time: #{e}"
end
```

#### Using the get_inbox_response_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxResponseTime200Response>, Integer, Hash)> get_inbox_response_time_with_http_info(from_date, opts)

```ruby
begin
  # Get inbox response-time stats
  data, status_code, headers = api_instance.get_inbox_response_time_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxResponseTime200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_response_time_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**GetInboxResponseTime200Response**](GetInboxResponseTime200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_source_breakdown

> <GetInboxSourceBreakdown200Response> get_inbox_source_breakdown(from_date, opts)

Get inbox source breakdown

Breakdown of inbox messages by their lineage source (the `metadata.source` field set at ingest time: human / workflow / sequence / broadcast / comment_automation / api / contact / platform). Each source row also carries a per-platform sub-split. Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20'), # Date | 
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | 
  account_id: 'account_id_example' # String | 
}

begin
  # Get inbox source breakdown
  result = api_instance.get_inbox_source_breakdown(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_source_breakdown: #{e}"
end
```

#### Using the get_inbox_source_breakdown_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxSourceBreakdown200Response>, Integer, Hash)> get_inbox_source_breakdown_with_http_info(from_date, opts)

```ruby
begin
  # Get inbox source breakdown
  data, status_code, headers = api_instance.get_inbox_source_breakdown_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxSourceBreakdown200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_source_breakdown_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**GetInboxSourceBreakdown200Response**](GetInboxSourceBreakdown200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_top_accounts

> <GetInboxTopAccounts200Response> get_inbox_top_accounts(from_date, opts)

Get top accounts by inbox volume

Leaderboard of social accounts by inbox message volume. Decorates each row with display labels from the live SocialAccount record (so the UI shows username + displayName, not just an ID). Accounts that no longer map to a SocialAccount surface as \"(disconnected)\" so the row stays visible. Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20'), # Date | 
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | 
  source: 'source_example', # String | 
  limit: 56 # Integer | Cap on returned rows. Lower than the posting listing's 100 because each row triggers a SocialAccount Mongo lookup.
}

begin
  # Get top accounts by inbox volume
  result = api_instance.get_inbox_top_accounts(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_top_accounts: #{e}"
end
```

#### Using the get_inbox_top_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxTopAccounts200Response>, Integer, Hash)> get_inbox_top_accounts_with_http_info(from_date, opts)

```ruby
begin
  # Get top accounts by inbox volume
  data, status_code, headers = api_instance.get_inbox_top_accounts_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxTopAccounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_top_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **limit** | **Integer** | Cap on returned rows. Lower than the posting listing&#39;s 100 because each row triggers a SocialAccount Mongo lookup. | [optional][default to 10] |

### Return type

[**GetInboxTopAccounts200Response**](GetInboxTopAccounts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_volume

> <GetInboxVolume200Response> get_inbox_volume(from_date, opts)

Get inbox messaging volume

Daily inbox messaging volume + breakdowns. Folds the raw messaging events into three projections so the client can render the volume chart, KPI strip, and per-platform stacked bar from a single call. Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | Inclusive lower bound (YYYY-MM-DD). Required.
opts = {
  to_date: Date.parse('2013-10-20'), # Date | Inclusive upper bound (YYYY-MM-DD). Defaults to today.
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | Filter by single platform (facebook, instagram, twitter, etc.).
  account_id: 'account_id_example', # String | 
  source: 'source_example' # String | Filter by metadata.source lineage (human, workflow, sequence, broadcast, comment_automation, api, contact, platform).
}

begin
  # Get inbox messaging volume
  result = api_instance.get_inbox_volume(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_volume: #{e}"
end
```

#### Using the get_inbox_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxVolume200Response>, Integer, Hash)> get_inbox_volume_with_http_info(from_date, opts)

```ruby
begin
  # Get inbox messaging volume
  data, status_code, headers = api_instance.get_inbox_volume_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxVolume200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->get_inbox_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** | Inclusive lower bound (YYYY-MM-DD). Required. |  |
| **to_date** | **Date** | Inclusive upper bound (YYYY-MM-DD). Defaults to today. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** | Filter by single platform (facebook, instagram, twitter, etc.). | [optional] |
| **account_id** | **String** |  | [optional] |
| **source** | **String** | Filter by metadata.source lineage (human, workflow, sequence, broadcast, comment_automation, api, contact, platform). | [optional] |

### Return type

[**GetInboxVolume200Response**](GetInboxVolume200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_conversation_analytics

> <ListInboxConversationAnalytics200Response> list_inbox_conversation_analytics(from_date, opts)

List conversations with inbox analytics

Per-conversation listing with per-row totals + first/last message timestamps. The inbox analog of GET /v1/analytics (posts listing) — same filter shape, same pagination, same sort/order semantics. Use as the entry point for the per-conversation analytics drawer at /v1/analytics/inbox/conversations/{conversationId}.  Rows are enriched with the conversation's participant info (`participantName`, `participantUsername`, `participantPicture`) and last-message preview by joining the Conversation document scoped to the caller's team. Max date range is 365 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxAnalyticsApi.new
from_date = Date.parse('2013-10-20') # Date | 
opts = {
  to_date: Date.parse('2013-10-20'), # Date | 
  profile_id: 'profile_id_example', # String | 
  platform: 'platform_example', # String | 
  account_id: 'account_id_example', # String | 
  source: 'source_example', # String | 
  limit: 56, # Integer | 
  page: 56, # Integer | 
  sort_by: 'lastMessageAt', # String | 
  order: 'asc' # String | 
}

begin
  # List conversations with inbox analytics
  result = api_instance.list_inbox_conversation_analytics(from_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->list_inbox_conversation_analytics: #{e}"
end
```

#### Using the list_inbox_conversation_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxConversationAnalytics200Response>, Integer, Hash)> list_inbox_conversation_analytics_with_http_info(from_date, opts)

```ruby
begin
  # List conversations with inbox analytics
  data, status_code, headers = api_instance.list_inbox_conversation_analytics_with_http_info(from_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxConversationAnalytics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InboxAnalyticsApi->list_inbox_conversation_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **page** | **Integer** |  | [optional][default to 1] |
| **sort_by** | **String** |  | [optional][default to &#39;lastMessageAt&#39;] |
| **order** | **String** |  | [optional][default to &#39;desc&#39;] |

### Return type

[**ListInboxConversationAnalytics200Response**](ListInboxConversationAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

