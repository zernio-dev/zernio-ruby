# Zernio::TrackingLinksApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tracking_link**](TrackingLinksApi.md#create_tracking_link) | **POST** /v1/tracking-links | Create a tracking link |
| [**delete_tracking_link**](TrackingLinksApi.md#delete_tracking_link) | **DELETE** /v1/tracking-links/{linkId} | Delete a tracking link |
| [**get_tracking_link**](TrackingLinksApi.md#get_tracking_link) | **GET** /v1/tracking-links/{linkId} | Get a tracking link |
| [**get_tracking_link_stats**](TrackingLinksApi.md#get_tracking_link_stats) | **GET** /v1/tracking-links/{linkId}/stats | Get a tracking link&#39;s results |
| [**list_tracking_links**](TrackingLinksApi.md#list_tracking_links) | **GET** /v1/tracking-links | List tracking links |
| [**rotate_tracking_link_postback_token**](TrackingLinksApi.md#rotate_tracking_link_postback_token) | **POST** /v1/tracking-links/{linkId}/rotate-postback-token | Rotate a tracking link&#39;s postback URL |
| [**update_tracking_link**](TrackingLinksApi.md#update_tracking_link) | **PATCH** /v1/tracking-links/{linkId} | Update a tracking link |


## create_tracking_link

> <CreateTrackingLink201Response> create_tracking_link(idempotency_key, create_tracking_link_request)

Create a tracking link

Creates a short link on a tracking site. Each click goes to one of `destinations`, picked by weight, so the link also split-tests landing pages. Put `url` in your ads and give `postbackUrl` to the network that reports conversions server to server. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
idempotency_key = 'idempotency_key_example' # String | A unique key per link you create, such as a UUID. A retry with the same key and body returns the same link.
create_tracking_link_request = Zernio::CreateTrackingLinkRequest.new({site_id: 'site_id_example', name: 'name_example', destinations: [Zernio::TrackingLinkDestination.new({url: 'url_example', weight: 37})]}) # CreateTrackingLinkRequest | 

begin
  # Create a tracking link
  result = api_instance.create_tracking_link(idempotency_key, create_tracking_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->create_tracking_link: #{e}"
end
```

#### Using the create_tracking_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingLink201Response>, Integer, Hash)> create_tracking_link_with_http_info(idempotency_key, create_tracking_link_request)

```ruby
begin
  # Create a tracking link
  data, status_code, headers = api_instance.create_tracking_link_with_http_info(idempotency_key, create_tracking_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingLink201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->create_tracking_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | A unique key per link you create, such as a UUID. A retry with the same key and body returns the same link. |  |
| **create_tracking_link_request** | [**CreateTrackingLinkRequest**](CreateTrackingLinkRequest.md) |  |  |

### Return type

[**CreateTrackingLink201Response**](CreateTrackingLink201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tracking_link

> delete_tracking_link(link_id)

Delete a tracking link

The link and its postback URL stop working at once. Conversions already stored are kept.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
link_id = 'link_id_example' # String | 

begin
  # Delete a tracking link
  api_instance.delete_tracking_link(link_id)
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->delete_tracking_link: #{e}"
end
```

#### Using the delete_tracking_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tracking_link_with_http_info(link_id)

```ruby
begin
  # Delete a tracking link
  data, status_code, headers = api_instance.delete_tracking_link_with_http_info(link_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->delete_tracking_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_link

> <CreateTrackingLink201Response> get_tracking_link(link_id)

Get a tracking link

One link, with its URL and postback URL.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
link_id = 'link_id_example' # String | 

begin
  # Get a tracking link
  result = api_instance.get_tracking_link(link_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->get_tracking_link: #{e}"
end
```

#### Using the get_tracking_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingLink201Response>, Integer, Hash)> get_tracking_link_with_http_info(link_id)

```ruby
begin
  # Get a tracking link
  data, status_code, headers = api_instance.get_tracking_link_with_http_info(link_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingLink201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->get_tracking_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** |  |  |

### Return type

[**CreateTrackingLink201Response**](CreateTrackingLink201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_link_stats

> <TrackingLinkStats> get_tracking_link_stats(link_id, from_date, to_date)

Get a tracking link's results

Clicks, conversions and revenue of one link over a range of days (UTC), and its clicks per destination, the result of a split test. Clicks leave out bots.  Conversions are the link's postbacks plus website conversions carrying the click id of one of its clicks, less any retracted. The range is at most 90 days, the time clicks are kept. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
link_id = 'link_id_example' # String | 
from_date = Date.parse('2013-10-20') # Date | First day of the range, `YYYY-MM-DD`.
to_date = Date.parse('2013-10-20') # Date | Last day of the range, `YYYY-MM-DD`.

begin
  # Get a tracking link's results
  result = api_instance.get_tracking_link_stats(link_id, from_date, to_date)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->get_tracking_link_stats: #{e}"
end
```

#### Using the get_tracking_link_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrackingLinkStats>, Integer, Hash)> get_tracking_link_stats_with_http_info(link_id, from_date, to_date)

```ruby
begin
  # Get a tracking link's results
  data, status_code, headers = api_instance.get_tracking_link_stats_with_http_info(link_id, from_date, to_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrackingLinkStats>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->get_tracking_link_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** |  |  |
| **from_date** | **Date** | First day of the range, &#x60;YYYY-MM-DD&#x60;. |  |
| **to_date** | **Date** | Last day of the range, &#x60;YYYY-MM-DD&#x60;. |  |

### Return type

[**TrackingLinkStats**](TrackingLinkStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_links

> <ListTrackingLinks200Response> list_tracking_links(opts)

List tracking links

The tracking links of your workspace in creation order. Pass `profileId` or `siteId` to list one profile's or one site's links.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
opts = {
  profile_id: 'profile_id_example', # String | 
  site_id: 'site_id_example', # String | 
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `pagination.nextCursor` from the previous page.
}

begin
  # List tracking links
  result = api_instance.list_tracking_links(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->list_tracking_links: #{e}"
end
```

#### Using the list_tracking_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingLinks200Response>, Integer, Hash)> list_tracking_links_with_http_info(opts)

```ruby
begin
  # List tracking links
  data, status_code, headers = api_instance.list_tracking_links_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingLinks200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->list_tracking_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |
| **site_id** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;pagination.nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListTrackingLinks200Response**](ListTrackingLinks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_tracking_link_postback_token

> <CreateTrackingLink201Response> rotate_tracking_link_postback_token(link_id, idempotency_key)

Rotate a tracking link's postback URL

Issues a new `postbackUrl`. The old one stops working at once, so update it at the network right after.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
link_id = 'link_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | A unique key per rotation, such as a UUID.

begin
  # Rotate a tracking link's postback URL
  result = api_instance.rotate_tracking_link_postback_token(link_id, idempotency_key)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->rotate_tracking_link_postback_token: #{e}"
end
```

#### Using the rotate_tracking_link_postback_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingLink201Response>, Integer, Hash)> rotate_tracking_link_postback_token_with_http_info(link_id, idempotency_key)

```ruby
begin
  # Rotate a tracking link's postback URL
  data, status_code, headers = api_instance.rotate_tracking_link_postback_token_with_http_info(link_id, idempotency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingLink201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->rotate_tracking_link_postback_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** |  |  |
| **idempotency_key** | **String** | A unique key per rotation, such as a UUID. |  |

### Return type

[**CreateTrackingLink201Response**](CreateTrackingLink201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tracking_link

> <CreateTrackingLink201Response> update_tracking_link(link_id, update_tracking_link_request)

Update a tracking link

Changes the link's name, destinations, campaign hints or status. Send at least one field. `status: paused` turns the link off until it is set back to `active`. `campaign: null` removes the hints. The code and URL never change. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingLinksApi.new
link_id = 'link_id_example' # String | 
update_tracking_link_request = Zernio::UpdateTrackingLinkRequest.new # UpdateTrackingLinkRequest | 

begin
  # Update a tracking link
  result = api_instance.update_tracking_link(link_id, update_tracking_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->update_tracking_link: #{e}"
end
```

#### Using the update_tracking_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingLink201Response>, Integer, Hash)> update_tracking_link_with_http_info(link_id, update_tracking_link_request)

```ruby
begin
  # Update a tracking link
  data, status_code, headers = api_instance.update_tracking_link_with_http_info(link_id, update_tracking_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingLink201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingLinksApi->update_tracking_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** |  |  |
| **update_tracking_link_request** | [**UpdateTrackingLinkRequest**](UpdateTrackingLinkRequest.md) |  |  |

### Return type

[**CreateTrackingLink201Response**](CreateTrackingLink201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

