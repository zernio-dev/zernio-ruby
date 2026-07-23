# Zernio::AdInsightsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ad_insights_report**](AdInsightsApi.md#create_ad_insights_report) | **POST** /v1/ads/insights/reports | Submit an async insights report run |
| [**get_ad_analytics**](AdInsightsApi.md#get_ad_analytics) | **GET** /v1/ads/{adId}/analytics | Get ad analytics |
| [**get_ad_insights_report**](AdInsightsApi.md#get_ad_insights_report) | **GET** /v1/ads/insights/reports/{reportRunId} | Poll an async insights report run |
| [**get_campaign_analytics**](AdInsightsApi.md#get_campaign_analytics) | **GET** /v1/ads/campaigns/{campaignId}/analytics | Get campaign analytics |
| [**query_ad_insights**](AdInsightsApi.md#query_ad_insights) | **GET** /v1/ads/insights | Flexible live insights query |


## create_ad_insights_report

> <CreateAdInsightsReport202Response> create_ad_insights_report(create_ad_insights_report_request)

Submit an async insights report run

Submits an asynchronous Meta insights report. Same query surface as GET /v1/ads/insights, but in the JSON body; Meta processes the report server-side, which is the right choice for long ranges or large accounts where the sync query is slow or rate-limited. Returns a `reportRunId` to poll via GET /v1/ads/insights/reports/{reportRunId}. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdInsightsApi.new
create_ad_insights_report_request = Zernio::CreateAdInsightsReportRequest.new({account_id: 'account_id_example', object_id: 'object_id_example'}) # CreateAdInsightsReportRequest | 

begin
  # Submit an async insights report run
  result = api_instance.create_ad_insights_report(create_ad_insights_report_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->create_ad_insights_report: #{e}"
end
```

#### Using the create_ad_insights_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdInsightsReport202Response>, Integer, Hash)> create_ad_insights_report_with_http_info(create_ad_insights_report_request)

```ruby
begin
  # Submit an async insights report run
  data, status_code, headers = api_instance.create_ad_insights_report_with_http_info(create_ad_insights_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdInsightsReport202Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->create_ad_insights_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_insights_report_request** | [**CreateAdInsightsReportRequest**](CreateAdInsightsReportRequest.md) |  |  |

### Return type

[**CreateAdInsightsReport202Response**](CreateAdInsightsReport202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ad_analytics

> <GetAdAnalytics200Response> get_ad_analytics(ad_id, opts)

Get ad analytics

Returns detailed performance analytics for an ad. Includes summary metrics, a daily timeline over the requested date range, and optional demographic breakdowns (Meta and TikTok only). If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdInsightsApi.new
ad_id = 'ad_id_example' # String | 
opts = {
  from_date: Date.parse('2013-10-20'), # Date | Start of date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  breakdowns: 'breakdowns_example' # String | Comma-separated breakdown dimensions.  **Meta**: age, gender, country, publisher_platform, device_platform, region.  **TikTok**: gender, age, country_code, platform, ac, language.  **LinkedIn** (firmographics): job_title, job_function, seniority, industry, company, company_size, country, region. Rows carry the raw pivot `value` plus a resolved `name`. LinkedIn serves these aggregated over the whole range, delays the data 12-24h, and omits segments with fewer than 3 events. 
}

begin
  # Get ad analytics
  result = api_instance.get_ad_analytics(ad_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_ad_analytics: #{e}"
end
```

#### Using the get_ad_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAnalytics200Response>, Integer, Hash)> get_ad_analytics_with_http_info(ad_id, opts)

```ruby
begin
  # Get ad analytics
  data, status_code, headers = api_instance.get_ad_analytics_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAnalytics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_ad_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **from_date** | **Date** | Start of date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **breakdowns** | **String** | Comma-separated breakdown dimensions.  **Meta**: age, gender, country, publisher_platform, device_platform, region.  **TikTok**: gender, age, country_code, platform, ac, language.  **LinkedIn** (firmographics): job_title, job_function, seniority, industry, company, company_size, country, region. Rows carry the raw pivot &#x60;value&#x60; plus a resolved &#x60;name&#x60;. LinkedIn serves these aggregated over the whole range, delays the data 12-24h, and omits segments with fewer than 3 events.  | [optional] |

### Return type

[**GetAdAnalytics200Response**](GetAdAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_insights_report

> <GetAdInsightsReport200Response> get_ad_insights_report(report_run_id, account_id, opts)

Poll an async insights report run

Status and results for a report run created via POST /v1/ads/insights/reports. While the job runs, returns `status` and `percentCompletion`. Once `status` is \"Job Completed\" the response also carries a `data` page, cursor-paginated via `limit` / `after`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdInsightsApi.new
report_run_id = 'report_run_id_example' # String | 
account_id = 'account_id_example' # String | Zernio SocialAccount id used to resolve the Meta token (must be the same connection that created the run).
opts = {
  limit: 56, # Integer | 
  after: 'after_example' # String | 
}

begin
  # Poll an async insights report run
  result = api_instance.get_ad_insights_report(report_run_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_ad_insights_report: #{e}"
end
```

#### Using the get_ad_insights_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdInsightsReport200Response>, Integer, Hash)> get_ad_insights_report_with_http_info(report_run_id, account_id, opts)

```ruby
begin
  # Poll an async insights report run
  data, status_code, headers = api_instance.get_ad_insights_report_with_http_info(report_run_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdInsightsReport200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_ad_insights_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_run_id** | **String** |  |  |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token (must be the same connection that created the run). |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **after** | **String** |  | [optional] |

### Return type

[**GetAdInsightsReport200Response**](GetAdInsightsReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_analytics

> <GetCampaignAnalytics200Response> get_campaign_analytics(campaign_id, opts)

Get campaign analytics

Returns performance analytics for a whole campaign in one call: summary metrics, a daily timeline over the requested date range (summed across the campaign's ads), and optional demographic breakdowns. Breakdowns are fetched live from Meta at the campaign level (one call per dimension, no per-ad fan-out), so an agency dashboard gets campaign-level age/gender/etc. without summing thousands of per-ad reads. `campaignId` is the platform campaign id; pass `platform` when a campaign id could be ambiguous across platforms. If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdInsightsApi.new
campaign_id = 'campaign_id_example' # String | Platform campaign id (platformCampaignId).
opts = {
  platform: 'platform_example', # String | Disambiguate when the campaign id exists across platforms (e.g. facebook, instagram).
  from_date: Date.parse('2013-10-20'), # Date | Start of date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  breakdowns: 'breakdowns_example' # String | Comma-separated breakdown dimensions.  **Meta**: age, gender, country, publisher_platform, device_platform, region, platform_position, impression_device, video_asset, image_asset, body_asset, title_asset.  **LinkedIn** (firmographics): job_title, job_function, seniority, industry, company, company_size, country, region. Rows carry the raw pivot `value` plus a resolved `name`. LinkedIn serves these aggregated over the whole range, delays the data 12-24h, and omits segments with fewer than 3 events. 
}

begin
  # Get campaign analytics
  result = api_instance.get_campaign_analytics(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_campaign_analytics: #{e}"
end
```

#### Using the get_campaign_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignAnalytics200Response>, Integer, Hash)> get_campaign_analytics_with_http_info(campaign_id, opts)

```ruby
begin
  # Get campaign analytics
  data, status_code, headers = api_instance.get_campaign_analytics_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignAnalytics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->get_campaign_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Platform campaign id (platformCampaignId). |  |
| **platform** | **String** | Disambiguate when the campaign id exists across platforms (e.g. facebook, instagram). | [optional] |
| **from_date** | **Date** | Start of date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **breakdowns** | **String** | Comma-separated breakdown dimensions.  **Meta**: age, gender, country, publisher_platform, device_platform, region, platform_position, impression_device, video_asset, image_asset, body_asset, title_asset.  **LinkedIn** (firmographics): job_title, job_function, seniority, industry, company, company_size, country, region. Rows carry the raw pivot &#x60;value&#x60; plus a resolved &#x60;name&#x60;. LinkedIn serves these aggregated over the whole range, delays the data 12-24h, and omits segments with fewer than 3 events.  | [optional] |

### Return type

[**GetCampaignAnalytics200Response**](GetCampaignAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_ad_insights

> <QueryAdInsights200Response> query_ad_insights(account_id, object_id, opts)

Flexible live insights query

Live, flexible insights query against Meta's Graph API. Unlike GET /v1/ads/{adId}/analytics (fixed metric set, cached), this forwards caller-chosen `fields`, `breakdowns` and `filtering` to any Meta insights node and returns Meta's rows verbatim.  `objectId` selects the node: an ad account, campaign, ad set or ad platform id. `level` sets row granularity independently of the node.  Semantic validation is Meta's: an unknown field or invalid breakdown combination returns a 400 carrying Meta's message. For long ranges or agency-scale accounts prefer the async variant (POST /v1/ads/insights/reports). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdInsightsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
object_id = 'object_id_example' # String | Meta insights node: act_<n>, campaign id, ad set id or ad id.
opts = {
  level: 'ad', # String | Row granularity
  fields: 'fields_example', # String | Comma-separated Graph insights fields (e.g. spend,impressions,frequency,website_purchase_roas). Omitted = Meta's default set.
  breakdowns: 'breakdowns_example', # String | Comma-separated Graph breakdowns (e.g. age,gender or publisher_platform).
  action_breakdowns: 'action_breakdowns_example', # String | Comma-separated Graph action breakdowns. Segments the actions[] arrays in each row.
  action_attribution_windows: 'action_attribution_windows_example', # String | Comma-separated Meta attribution windows. Action values are returned keyed per window.
  action_report_time: 'action_report_time_example', # String | When actions are counted: impression, conversion or mixed.
  use_unified_attribution_setting: true, # Boolean | Use the ad sets' own attribution settings for action counting.
  filtering: 'filtering_example', # String | JSON array of Meta filter objects: [{\"field\", \"operator\", \"value\"}]. Applied server-side by Meta.
  date_preset: 'date_preset_example', # String | Meta date_preset (e.g. last_7d, last_30d, this_month). Mutually exclusive with fromDate/toDate.
  from_date: Date.parse('2013-10-20'), # Date | Start of range (YYYY-MM-DD); requires toDate.
  to_date: Date.parse('2013-10-20'), # Date | End of range (YYYY-MM-DD); requires fromDate.
  time_increment: 'time_increment_example', # String | Days per row (1-90), monthly, or all_days.
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Flexible live insights query
  result = api_instance.query_ad_insights(account_id, object_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->query_ad_insights: #{e}"
end
```

#### Using the query_ad_insights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueryAdInsights200Response>, Integer, Hash)> query_ad_insights_with_http_info(account_id, object_id, opts)

```ruby
begin
  # Flexible live insights query
  data, status_code, headers = api_instance.query_ad_insights_with_http_info(account_id, object_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryAdInsights200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdInsightsApi->query_ad_insights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **object_id** | **String** | Meta insights node: act_&lt;n&gt;, campaign id, ad set id or ad id. |  |
| **level** | **String** | Row granularity | [optional] |
| **fields** | **String** | Comma-separated Graph insights fields (e.g. spend,impressions,frequency,website_purchase_roas). Omitted &#x3D; Meta&#39;s default set. | [optional] |
| **breakdowns** | **String** | Comma-separated Graph breakdowns (e.g. age,gender or publisher_platform). | [optional] |
| **action_breakdowns** | **String** | Comma-separated Graph action breakdowns. Segments the actions[] arrays in each row. | [optional] |
| **action_attribution_windows** | **String** | Comma-separated Meta attribution windows. Action values are returned keyed per window. | [optional] |
| **action_report_time** | **String** | When actions are counted: impression, conversion or mixed. | [optional] |
| **use_unified_attribution_setting** | **Boolean** | Use the ad sets&#39; own attribution settings for action counting. | [optional] |
| **filtering** | **String** | JSON array of Meta filter objects: [{\&quot;field\&quot;, \&quot;operator\&quot;, \&quot;value\&quot;}]. Applied server-side by Meta. | [optional] |
| **date_preset** | **String** | Meta date_preset (e.g. last_7d, last_30d, this_month). Mutually exclusive with fromDate/toDate. | [optional] |
| **from_date** | **Date** | Start of range (YYYY-MM-DD); requires toDate. | [optional] |
| **to_date** | **Date** | End of range (YYYY-MM-DD); requires fromDate. | [optional] |
| **time_increment** | **String** | Days per row (1-90), monthly, or all_days. | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**QueryAdInsights200Response**](QueryAdInsights200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

