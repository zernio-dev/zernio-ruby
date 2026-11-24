# Zernio::AdChangesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_ad_change**](AdChangesApi.md#confirm_ad_change) | **POST** /v1/ads/changes/{changeId}/confirm | Confirm a staged ad change |
| [**discard_ad_change**](AdChangesApi.md#discard_ad_change) | **DELETE** /v1/ads/changes/{changeId} | Discard a staged ad change |
| [**get_ad_change**](AdChangesApi.md#get_ad_change) | **GET** /v1/ads/changes/{changeId} | Get a staged ad change |


## confirm_ad_change

> Hash&lt;String, Object&gt; confirm_ad_change(change_id)

Confirm a staged ad change

Applies a staged change and returns what the direct write returns: the response body of the route the change was staged on.  The caller needs the same access to the object as for the direct write, and the checks of that write run here, including the live ads allowance.  ### Changed since staging  Before writing, the object is read from the ad network again and compared with what it held when the change was staged.  If it changed in between, nothing is written, the change ends as `failed` and the answer is `409` `change_target_changed` with the current values in `details.current`. Stage the change again from those values.  ### Retrying  A change is applied at most once. Confirming a change that is already `confirmed` returns its stored result again. A change that failed answers `409` `change_not_staged`: stage a new one. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdChangesApi.new
change_id = 'change_id_example' # String | The id of the staged change.

begin
  # Confirm a staged ad change
  result = api_instance.confirm_ad_change(change_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->confirm_ad_change: #{e}"
end
```

#### Using the confirm_ad_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> confirm_ad_change_with_http_info(change_id)

```ruby
begin
  # Confirm a staged ad change
  data, status_code, headers = api_instance.confirm_ad_change_with_http_info(change_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->confirm_ad_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The id of the staged change. |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## discard_ad_change

> discard_ad_change(change_id)

Discard a staged ad change

Deletes a change that is still staged. Nothing was written to the ad network, so there is nothing to undo.  A change that was already confirmed or has failed cannot be discarded. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdChangesApi.new
change_id = 'change_id_example' # String | The id of the staged change.

begin
  # Discard a staged ad change
  api_instance.discard_ad_change(change_id)
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->discard_ad_change: #{e}"
end
```

#### Using the discard_ad_change_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> discard_ad_change_with_http_info(change_id)

```ruby
begin
  # Discard a staged ad change
  data, status_code, headers = api_instance.discard_ad_change_with_http_info(change_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->discard_ad_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The id of the staged change. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_change

> <GetAdChange200Response> get_ad_change(change_id)

Get a staged ad change

Returns one ad change with its before/after diff. A change is created by sending a supported ad write with `stage: true`.  A staged change does not expire. A confirmed or failed change stays readable for 7 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdChangesApi.new
change_id = 'change_id_example' # String | The id of the staged change.

begin
  # Get a staged ad change
  result = api_instance.get_ad_change(change_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->get_ad_change: #{e}"
end
```

#### Using the get_ad_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdChange200Response>, Integer, Hash)> get_ad_change_with_http_info(change_id)

```ruby
begin
  # Get a staged ad change
  data, status_code, headers = api_instance.get_ad_change_with_http_info(change_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdChange200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->get_ad_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The id of the staged change. |  |

### Return type

[**GetAdChange200Response**](GetAdChange200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

