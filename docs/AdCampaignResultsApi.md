# Zernio::AdCampaignResultsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_campaign_result_events**](AdCampaignResultsApi.md#get_campaign_result_events) | **GET** /v1/ads/campaign-results/events | List the events that count as campaign results |
| [**get_campaign_result_profit**](AdCampaignResultsApi.md#get_campaign_result_profit) | **GET** /v1/ads/campaign-results/profit | Get your profit setting |
| [**get_campaign_results_totals**](AdCampaignResultsApi.md#get_campaign_results_totals) | **GET** /v1/ads/campaign-results/totals | Get your results totals |
| [**get_campaign_results_upload**](AdCampaignResultsApi.md#get_campaign_results_upload) | **GET** /v1/ads/campaign-results/uploads/{uploadId} | Check a results upload |
| [**get_tag_new_ads**](AdCampaignResultsApi.md#get_tag_new_ads) | **GET** /v1/ads/campaign-results/tag-new-ads | Get the Tag new ads setting |
| [**list_campaign_result_metrics**](AdCampaignResultsApi.md#list_campaign_result_metrics) | **GET** /v1/ads/campaign-results/metrics | List your result metrics |
| [**list_campaign_results**](AdCampaignResultsApi.md#list_campaign_results) | **GET** /v1/ads/campaign-results | List your results per campaign |
| [**set_campaign_result_events**](AdCampaignResultsApi.md#set_campaign_result_events) | **PUT** /v1/ads/campaign-results/events | Choose the events that count as campaign results |
| [**set_campaign_result_metric**](AdCampaignResultsApi.md#set_campaign_result_metric) | **PUT** /v1/ads/campaign-results/metrics/{key} | Name a result metric or define a formula |
| [**set_campaign_result_profit**](AdCampaignResultsApi.md#set_campaign_result_profit) | **PUT** /v1/ads/campaign-results/profit | Set your margin and cost per order |
| [**set_tag_new_ads**](AdCampaignResultsApi.md#set_tag_new_ads) | **PUT** /v1/ads/campaign-results/tag-new-ads | Turn Tag new ads on or off |
| [**upload_campaign_results**](AdCampaignResultsApi.md#upload_campaign_results) | **POST** /v1/ads/campaign-results | Upload your results per campaign |


## get_campaign_result_events

> <GetCampaignResultEvents200Response> get_campaign_result_events

List the events that count as campaign results

The names of the events sent to `POST /v1/events` that your team counts as campaign results. Only these are tied to a campaign when they arrive. Until you choose, they are `Purchase`, `Lead` and `QualifiedLead`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new

begin
  # List the events that count as campaign results
  result = api_instance.get_campaign_result_events
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_result_events: #{e}"
end
```

#### Using the get_campaign_result_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignResultEvents200Response>, Integer, Hash)> get_campaign_result_events_with_http_info

```ruby
begin
  # List the events that count as campaign results
  data, status_code, headers = api_instance.get_campaign_result_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignResultEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_result_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCampaignResultEvents200Response**](GetCampaignResultEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_result_profit

> <CampaignResultProfit> get_campaign_result_profit

Get your profit setting

The margin and cost per order your team's profit metrics use. Both are `null` until you set them. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new

begin
  # Get your profit setting
  result = api_instance.get_campaign_result_profit
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_result_profit: #{e}"
end
```

#### Using the get_campaign_result_profit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignResultProfit>, Integer, Hash)> get_campaign_result_profit_with_http_info

```ruby
begin
  # Get your profit setting
  data, status_code, headers = api_instance.get_campaign_result_profit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignResultProfit>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_result_profit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CampaignResultProfit**](CampaignResultProfit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_results_totals

> <GetCampaignResultsTotals200Response> get_campaign_results_totals(from_date, to_date, opts)

Get your results totals

Each metric you send summed over a date range across every campaign of the ad accounts your key can see, or of the ones you name. Each day counts its newest uploaded value only, plus the events sent to `POST /v1/events` that are tied to a campaign.  An event counts here up to 15 minutes after it arrives.  Formulas are not computed here, since they also read the platform's numbers: apply one to these totals and the account's spend for the same range, or read it per campaign from `GET /v1/ads/tree?results=true`.  The newer way to read this is `GET /v1/metrics/ad-accounts`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
from_date = Date.parse('2013-10-20') # Date | 
to_date = Date.parse('2013-10-20') # Date | Inclusive. At most 400 days after `fromDate`.
opts = {
  model: 'last_click', # String | Attribution model your stored sales and leads count under. `last_click` (default) counts each event whole for the campaign it matched. The others split it across the campaigns of its earlier touches, so counts and revenue can be fractional. Uploads read the same under every model.
  ad_account_ids: 'ad_account_ids_example' # String | Comma-separated platform ad account ids, at most 100. Omit for every ad account your key can see.
}

begin
  # Get your results totals
  result = api_instance.get_campaign_results_totals(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_results_totals: #{e}"
end
```

#### Using the get_campaign_results_totals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignResultsTotals200Response>, Integer, Hash)> get_campaign_results_totals_with_http_info(from_date, to_date, opts)

```ruby
begin
  # Get your results totals
  data, status_code, headers = api_instance.get_campaign_results_totals_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignResultsTotals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_results_totals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** | Inclusive. At most 400 days after &#x60;fromDate&#x60;. |  |
| **model** | **String** | Attribution model your stored sales and leads count under. &#x60;last_click&#x60; (default) counts each event whole for the campaign it matched. The others split it across the campaigns of its earlier touches, so counts and revenue can be fractional. Uploads read the same under every model. | [optional][default to &#39;last_click&#39;] |
| **ad_account_ids** | **String** | Comma-separated platform ad account ids, at most 100. Omit for every ad account your key can see. | [optional] |

### Return type

[**GetCampaignResultsTotals200Response**](GetCampaignResultsTotals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_results_upload

> <GetCampaignResultsUpload200Response> get_campaign_results_upload(upload_id)

Check a results upload

How an upload was matched: rows matched and unmatched, and up to 100 unmatched rows with why (`no_campaign` or `ambiguous`).  `status` turns `done` once every row is processed, usually within seconds. Uploads are kept for 30 days.  A `failed` upload says why in `failureReason`. Send it again: re-sending a day replaces it, so nothing is counted twice. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
upload_id = 'upload_id_example' # String | 

begin
  # Check a results upload
  result = api_instance.get_campaign_results_upload(upload_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_results_upload: #{e}"
end
```

#### Using the get_campaign_results_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignResultsUpload200Response>, Integer, Hash)> get_campaign_results_upload_with_http_info(upload_id)

```ruby
begin
  # Check a results upload
  data, status_code, headers = api_instance.get_campaign_results_upload_with_http_info(upload_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignResultsUpload200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_campaign_results_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_id** | **String** |  |  |

### Return type

[**GetCampaignResultsUpload200Response**](GetCampaignResultsUpload200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_new_ads

> <GetTagNewAds200Response> get_tag_new_ads

Get the Tag new ads setting

Whether new Meta and Google ads created through Zernio carry the Zernio ad tag (`zrn=<platform ad id>` on the landing URL) when the create request does not set `tracking.zernioTag`. Off until you turn it on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new

begin
  # Get the Tag new ads setting
  result = api_instance.get_tag_new_ads
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_tag_new_ads: #{e}"
end
```

#### Using the get_tag_new_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTagNewAds200Response>, Integer, Hash)> get_tag_new_ads_with_http_info

```ruby
begin
  # Get the Tag new ads setting
  data, status_code, headers = api_instance.get_tag_new_ads_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTagNewAds200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->get_tag_new_ads_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTagNewAds200Response**](GetTagNewAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_result_metrics

> <ListCampaignResultMetrics200Response> list_campaign_result_metrics

List your result metrics

The metric keys your team has sent, with their label and kind, then the formulas: your own and the built-in ones (`cac_percent`, `cost_per_sale`, `cost_per_qualified_lead`, `lead_to_sale`, `qualified_rate`).  Once you set a margin with `PUT /v1/ads/campaign-results/profit`, the built-ins add `profit`, `poas` and `profit_after_ads`. A new key appears as a `count` labelled from the key; name it, or define a formula, with `PUT /v1/ads/campaign-results/metrics/{key}`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new

begin
  # List your result metrics
  result = api_instance.list_campaign_result_metrics
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->list_campaign_result_metrics: #{e}"
end
```

#### Using the list_campaign_result_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignResultMetrics200Response>, Integer, Hash)> list_campaign_result_metrics_with_http_info

```ruby
begin
  # List your result metrics
  data, status_code, headers = api_instance.list_campaign_result_metrics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignResultMetrics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->list_campaign_result_metrics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCampaignResultMetrics200Response**](ListCampaignResultMetrics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_results

> <ListCampaignResults200Response> list_campaign_results(from_date, to_date, opts)

List your results per campaign

Your results summed per campaign over a date range, one entry per campaign with every metric it has, for the ad accounts your key can see. Each day counts its newest uploaded value only, plus the events sent to `POST /v1/events` that are tied to the campaign (`sales`, `revenue`, `leads`, `qualified_leads`).  An event counts here up to 15 minutes after it arrives.  Paginated by campaign: pass `nextCursor` back as `cursor` until it is null.  The newer way to read this is `GET /v1/metrics/campaigns`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
from_date = Date.parse('2013-10-20') # Date | 
to_date = Date.parse('2013-10-20') # Date | Inclusive. At most 400 days after `fromDate`.
opts = {
  model: 'last_click', # String | Attribution model your stored sales and leads count under. `last_click` (default) counts each event whole for the campaign it matched. The others split it across the campaigns of its earlier touches, so counts and revenue can be fractional. Uploads read the same under every model.
  campaign_ids: 'campaign_ids_example', # String | Comma-separated platform campaign ids, at most 500. Omit for all campaigns.
  limit: 56, # Integer | Campaigns per page.
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List your results per campaign
  result = api_instance.list_campaign_results(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->list_campaign_results: #{e}"
end
```

#### Using the list_campaign_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignResults200Response>, Integer, Hash)> list_campaign_results_with_http_info(from_date, to_date, opts)

```ruby
begin
  # List your results per campaign
  data, status_code, headers = api_instance.list_campaign_results_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignResults200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->list_campaign_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** | Inclusive. At most 400 days after &#x60;fromDate&#x60;. |  |
| **model** | **String** | Attribution model your stored sales and leads count under. &#x60;last_click&#x60; (default) counts each event whole for the campaign it matched. The others split it across the campaigns of its earlier touches, so counts and revenue can be fractional. Uploads read the same under every model. | [optional][default to &#39;last_click&#39;] |
| **campaign_ids** | **String** | Comma-separated platform campaign ids, at most 500. Omit for all campaigns. | [optional] |
| **limit** | **Integer** | Campaigns per page. | [optional][default to 100] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListCampaignResults200Response**](ListCampaignResults200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_campaign_result_events

> <SetCampaignResultEvents200Response> set_campaign_result_events(set_campaign_result_events_request)

Choose the events that count as campaign results

Sets which stored events are tied to a campaign when they arrive and add to its results.  `Purchase` adds `sales` and `revenue`, `Lead` adds `leads` and `QualifiedLead` adds `qualified_leads`. Any other event adds 1 per event to a metric keyed `event_` plus its name in lowercase, e.g. `event_completeregistration`, which formulas and rules can read.  Events stored before the change keep how they were counted. Send `null` to go back to `Purchase`, `Lead` and `QualifiedLead`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
set_campaign_result_events_request = Zernio::SetCampaignResultEventsRequest.new({event_names: ["Purchase", "Lead", "CompleteRegistration"]}) # SetCampaignResultEventsRequest | 

begin
  # Choose the events that count as campaign results
  result = api_instance.set_campaign_result_events(set_campaign_result_events_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_events: #{e}"
end
```

#### Using the set_campaign_result_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetCampaignResultEvents200Response>, Integer, Hash)> set_campaign_result_events_with_http_info(set_campaign_result_events_request)

```ruby
begin
  # Choose the events that count as campaign results
  data, status_code, headers = api_instance.set_campaign_result_events_with_http_info(set_campaign_result_events_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetCampaignResultEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_campaign_result_events_request** | [**SetCampaignResultEventsRequest**](SetCampaignResultEventsRequest.md) |  |  |

### Return type

[**SetCampaignResultEvents200Response**](SetCampaignResultEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_campaign_result_metric

> <SetCampaignResultMetric200Response> set_campaign_result_metric(key, set_campaign_result_metric_request)

Name a result metric or define a formula

Sets a metric key's label and kind: `count` for things you count (leads, sales), `money` with its currency (revenue), `percent` or `ratio`.  Send `formula` to make it a computed metric: `+ - * /` and parentheses over `spend`, `impressions`, `clicks`, `conversions`, `purchase_value` and the metrics you send, at most 200 characters. A formula cannot read another formula.  It is computed per campaign over the summed values of the range, and has no value when an input is missing or a division is by zero. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
key = 'key_example' # String | 
set_campaign_result_metric_request = Zernio::SetCampaignResultMetricRequest.new({label: 'Qualified leads', kind: 'count'}) # SetCampaignResultMetricRequest | 

begin
  # Name a result metric or define a formula
  result = api_instance.set_campaign_result_metric(key, set_campaign_result_metric_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_metric: #{e}"
end
```

#### Using the set_campaign_result_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetCampaignResultMetric200Response>, Integer, Hash)> set_campaign_result_metric_with_http_info(key, set_campaign_result_metric_request)

```ruby
begin
  # Name a result metric or define a formula
  data, status_code, headers = api_instance.set_campaign_result_metric_with_http_info(key, set_campaign_result_metric_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetCampaignResultMetric200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **set_campaign_result_metric_request** | [**SetCampaignResultMetricRequest**](SetCampaignResultMetricRequest.md) |  |  |

### Return type

[**SetCampaignResultMetric200Response**](SetCampaignResultMetric200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_campaign_result_profit

> <CampaignResultProfit> set_campaign_result_profit(set_campaign_result_profit_request)

Set your margin and cost per order

With a `marginPercent`, your team gets three built-in formulas, listed in `GET /v1/ads/campaign-results/metrics` and readable in `GET /v1/ads/campaign-results`, the Campaigns table and ad rules (`result:profit`), under every attribution model:  - `profit` = `revenue * marginPercent / 100 - sales * costPerOrder` - `poas` = `profit / spend` (profit on ad spend) - `profit_after_ads` = `profit - spend`  `revenue` and `sales` are the values counted from `Purchase` events or the ones you upload. `costPerOrder` is in each ad account's currency, the one its revenue is counted in. Values are rounded to 2 decimals. Send `marginPercent: null` to remove the profit metrics. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
set_campaign_result_profit_request = Zernio::SetCampaignResultProfitRequest.new({margin_percent: 35}) # SetCampaignResultProfitRequest | 

begin
  # Set your margin and cost per order
  result = api_instance.set_campaign_result_profit(set_campaign_result_profit_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_profit: #{e}"
end
```

#### Using the set_campaign_result_profit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignResultProfit>, Integer, Hash)> set_campaign_result_profit_with_http_info(set_campaign_result_profit_request)

```ruby
begin
  # Set your margin and cost per order
  data, status_code, headers = api_instance.set_campaign_result_profit_with_http_info(set_campaign_result_profit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignResultProfit>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_campaign_result_profit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_campaign_result_profit_request** | [**SetCampaignResultProfitRequest**](SetCampaignResultProfitRequest.md) |  |  |

### Return type

[**CampaignResultProfit**](CampaignResultProfit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tag_new_ads

> <SetTagNewAds200Response> set_tag_new_ads(set_tag_new_ads_request)

Turn Tag new ads on or off

With `enabled: true`, every new Meta and Google ad created through `POST /v1/ads/create` carries `zrn=<platform ad id>` on its landing URL, so the conversions it brings are tied to its campaign. A request that sets `tracking.zernioTag` keeps its own choice.  The same rules as `tracking.zernioTag` apply: lead forms, call ads, existing creatives and app promotion are skipped, and a Google ad is tagged only when it inherits no final URL suffix. Existing ads are never changed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
set_tag_new_ads_request = Zernio::SetTagNewAdsRequest.new({enabled: true}) # SetTagNewAdsRequest | 

begin
  # Turn Tag new ads on or off
  result = api_instance.set_tag_new_ads(set_tag_new_ads_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_tag_new_ads: #{e}"
end
```

#### Using the set_tag_new_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetTagNewAds200Response>, Integer, Hash)> set_tag_new_ads_with_http_info(set_tag_new_ads_request)

```ruby
begin
  # Turn Tag new ads on or off
  data, status_code, headers = api_instance.set_tag_new_ads_with_http_info(set_tag_new_ads_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetTagNewAds200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->set_tag_new_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_tag_new_ads_request** | [**SetTagNewAdsRequest**](SetTagNewAdsRequest.md) |  |  |

### Return type

[**SetTagNewAds200Response**](SetTagNewAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_campaign_results

> <UploadCampaignResults202Response> upload_campaign_results(upload_campaign_results_request, opts)

Upload your results per campaign

Sends your own daily numbers per campaign (qualified leads, sales, revenue...) so rules and reports can use them next to spend.  Name each row's campaign by `campaignId`, `utmCampaign` or `campaignName`. Rows are matched in the background: the `202` returns an `uploadId`, and `Location` points to `GET /v1/ads/campaign-results/uploads/{uploadId}`.  Re-sending a day replaces it. Send an `Idempotency-Key` to retry safely. Limits per team: 60 requests and 20,000 rows per hour, 512 KB per request. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignResultsApi.new
upload_campaign_results_request = Zernio::UploadCampaignResultsRequest.new({rows: [Zernio::UploadCampaignResultsRequestRowsInner.new({date: Date.today, values: { key: 3.56}})]}) # UploadCampaignResultsRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | A retry with the same key and body replays the first response instead of uploading twice.
}

begin
  # Upload your results per campaign
  result = api_instance.upload_campaign_results(upload_campaign_results_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->upload_campaign_results: #{e}"
end
```

#### Using the upload_campaign_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadCampaignResults202Response>, Integer, Hash)> upload_campaign_results_with_http_info(upload_campaign_results_request, opts)

```ruby
begin
  # Upload your results per campaign
  data, status_code, headers = api_instance.upload_campaign_results_with_http_info(upload_campaign_results_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadCampaignResults202Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignResultsApi->upload_campaign_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_campaign_results_request** | [**UploadCampaignResultsRequest**](UploadCampaignResultsRequest.md) |  |  |
| **idempotency_key** | **String** | A retry with the same key and body replays the first response instead of uploading twice. | [optional] |

### Return type

[**UploadCampaignResults202Response**](UploadCampaignResults202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

