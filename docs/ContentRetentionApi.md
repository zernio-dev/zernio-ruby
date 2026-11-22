# Zernio::ContentRetentionApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_content_retention**](ContentRetentionApi.md#get_content_retention) | **GET** /v1/content-retention | Get content retention mode |
| [**update_content_retention**](ContentRetentionApi.md#update_content_retention) | **PUT** /v1/content-retention | Turn zero content retention on or off |


## get_content_retention

> <ContentRetentionResponse> get_content_retention

Get content retention mode

Returns whether your team stores content. `none` is zero content retention: Zernio keeps identifiers and metadata only, and content fields come back as `null` with `contentNotRetained: true`. See the zero content retention guide for what changes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ContentRetentionApi.new

begin
  # Get content retention mode
  result = api_instance.get_content_retention
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ContentRetentionApi->get_content_retention: #{e}"
end
```

#### Using the get_content_retention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentRetentionResponse>, Integer, Hash)> get_content_retention_with_http_info

```ruby
begin
  # Get content retention mode
  data, status_code, headers = api_instance.get_content_retention_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentRetentionResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ContentRetentionApi->get_content_retention_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ContentRetentionResponse**](ContentRetentionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_content_retention

> <ContentRetentionResponse> update_content_retention(update_content_retention_request)

Turn zero content retention on or off

Sets your team's content retention mode for every member. Only the team owner can change it, with a signed-in session or a full-access API key.  - `none` turns on zero content retention: from then on Zernio stores no message text, comments, lead answers, mentions, post text after publishing, call transcripts or recordings. Webhooks become the only copy, so store each event when it arrives. - `standard` stores content again for new data. Content that was not stored cannot come back. - The change applies to new data within about 5 minutes. Content stored before it stays until it is deleted. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ContentRetentionApi.new
update_content_retention_request = Zernio::UpdateContentRetentionRequest.new({mode: 'standard'}) # UpdateContentRetentionRequest | 

begin
  # Turn zero content retention on or off
  result = api_instance.update_content_retention(update_content_retention_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ContentRetentionApi->update_content_retention: #{e}"
end
```

#### Using the update_content_retention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentRetentionResponse>, Integer, Hash)> update_content_retention_with_http_info(update_content_retention_request)

```ruby
begin
  # Turn zero content retention on or off
  data, status_code, headers = api_instance.update_content_retention_with_http_info(update_content_retention_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentRetentionResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ContentRetentionApi->update_content_retention_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_content_retention_request** | [**UpdateContentRetentionRequest**](UpdateContentRetentionRequest.md) |  |  |

### Return type

[**ContentRetentionResponse**](ContentRetentionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

