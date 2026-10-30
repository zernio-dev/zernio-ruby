# Zernio::AdCampaignResultsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_campaign_results_upload**](AdCampaignResultsApi.md#get_campaign_results_upload) | **GET** /v1/ads/campaign-results/uploads/{uploadId} | Check a results upload |
| [**list_campaign_result_metrics**](AdCampaignResultsApi.md#list_campaign_result_metrics) | **GET** /v1/ads/campaign-results/metrics | List your result metrics |
| [**list_campaign_results**](AdCampaignResultsApi.md#list_campaign_results) | **GET** /v1/ads/campaign-results | List your results per campaign |
| [**set_campaign_result_metric**](AdCampaignResultsApi.md#set_campaign_result_metric) | **PUT** /v1/ads/campaign-results/metrics/{key} | Name a result metric |
| [**upload_campaign_results**](AdCampaignResultsApi.md#upload_campaign_results) | **POST** /v1/ads/campaign-results | Upload your results per campaign |


## get_campaign_results_upload

> <GetCampaignResultsUpload200Response> get_campaign_results_upload(upload_id)

Check a results upload

How an upload was matched: rows matched and unmatched, and up to 100 unmatched rows with why (`no_campaign` or `ambiguous`).  `status` turns `done` once every row is processed, usually within seconds. Uploads are kept for 30 days. 

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


## list_campaign_result_metrics

> <ListCampaignResultMetrics200Response> list_campaign_result_metrics

List your result metrics

The metric keys your team has sent, with their label and kind. A new key appears as a `count` labelled from the key; name it with `PUT /v1/ads/campaign-results/metrics/{key}`. 

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

Your results summed per campaign over a date range, one entry per campaign with every metric it has, for the ad accounts your key can see. Each day counts its newest value only.  Paginated by campaign: pass `nextCursor` back as `cursor` until it is null. 

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


## set_campaign_result_metric

> <SetCampaignResultMetric200Response> set_campaign_result_metric(key, set_campaign_result_metric_request)

Name a result metric

Sets a metric key's label and kind: `count` for things you count (leads, sales) or `money` with its currency (revenue). 

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
  # Name a result metric
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
  # Name a result metric
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

