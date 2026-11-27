# Zernio::AdChangesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_ad_change**](AdChangesApi.md#confirm_ad_change) | **POST** /v1/ads/changes/{changeId}/confirm | Confirm a staged ad change |
| [**discard_ad_change**](AdChangesApi.md#discard_ad_change) | **DELETE** /v1/ads/changes/{changeId} | Discard a staged ad change |
| [**get_ad_change**](AdChangesApi.md#get_ad_change) | **GET** /v1/ads/changes/{changeId} | Get a staged ad change |
| [**list_ad_changes**](AdChangesApi.md#list_ad_changes) | **GET** /v1/ads/changes | List staged ad changes |
| [**restage_ad_change**](AdChangesApi.md#restage_ad_change) | **POST** /v1/ads/changes/{changeId}/restage | Stage a failed ad change again |
| [**update_ad_change**](AdChangesApi.md#update_ad_change) | **PATCH** /v1/ads/changes/{changeId} | Edit or refresh a staged ad change |


## confirm_ad_change

> Hash&lt;String, Object&gt; confirm_ad_change(change_id)

Confirm a staged ad change

Applies a staged change and returns what the direct write returns: the response body of the route the change was staged on.  The caller needs the same access to the object as for the direct write, and the checks of that write run here, including the live ads allowance.  ### Changed since staging  Before writing, the object is read from the ad network again and compared with what it held when the change was staged.  If it changed in between, nothing is written and the answer is `409` `change_target_changed` with the current values in `details.current`. The change stays `staged` and reads `stale: true`. Refresh it with PATCH /v1/ads/changes/{changeId}, or discard it and stage the change again from those values.  A change of type `operation` has no such check: its request is sent through its own route as it was stored.  After a confirm, the other staged changes on the same object are read again, so confirming one of two changes on an object does not refuse the other.  ### Retrying  A change is applied at most once. Confirming a change that is already `confirmed` returns its stored result again. A change that failed answers `409` `change_not_staged`: stage a new one.  A refusal before anything is written leaves the change `staged`, so the confirm can be sent again: `403` `ads_allowance_exceeded`, or on a one-field change a `429` from Zernio's own limits. Any other failed write ends the change as `failed`.  ### Creates  A staged create is sent once. The ad network checks at confirm whatever it did not check at staging, and media is fetched here. A create that fails ends as `failed` and is not retried: `error.details` keeps what the create reported about objects it had already made. 

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

Returns one ad change with its before/after diff. A change is created by sending a supported ad write with `stage: true`.  Campaign, ad set and ad edits, status changes and creates stage with a live read and a diff against the current values.  Every other write listed under `request.operation` stages as its request. Send `stage: true` in its body, or `?stage=true` on a write without a body. The answer is `202` with the change.  A staged change does not expire. A confirmed or failed change stays readable for 7 days, a failed create for 30 days. Disconnecting the connection of a staged change deletes it. 

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


## list_ad_changes

> <ListAdChanges200Response> list_ad_changes(opts)

List staged ad changes

Lists the ad changes waiting to be confirmed or discarded, newest first. With `status=failed` it lists the changes a confirm could not apply, each with its error, until they are deleted (7 days, 30 for a failed create). A confirmed change is not listed; read it by id.  Each item is a summary without the diff. Read one change to get its before/after values. 

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
opts = {
  status: 'staged', # String | Which changes to list.
  account_id: 'account_id_example', # String | Only the changes of this connected account.
  platform: 'platform_example', # String | Only the changes on this ad platform, as the change names it (for example `facebook` or `google`).
  type: 'campaign_status', # String | Only the changes of this type.
  created_by: 'created_by_example', # String | Only the changes this user staged.
  limit: 56, # Integer | How many changes to return.
  cursor: 'cursor_example' # String | The `nextCursor` of the previous page, unchanged.
}

begin
  # List staged ad changes
  result = api_instance.list_ad_changes(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->list_ad_changes: #{e}"
end
```

#### Using the list_ad_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdChanges200Response>, Integer, Hash)> list_ad_changes_with_http_info(opts)

```ruby
begin
  # List staged ad changes
  data, status_code, headers = api_instance.list_ad_changes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdChanges200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->list_ad_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Which changes to list. | [optional][default to &#39;staged&#39;] |
| **account_id** | **String** | Only the changes of this connected account. | [optional] |
| **platform** | **String** | Only the changes on this ad platform, as the change names it (for example &#x60;facebook&#x60; or &#x60;google&#x60;). | [optional] |
| **type** | **String** | Only the changes of this type. | [optional] |
| **created_by** | **String** | Only the changes this user staged. | [optional] |
| **limit** | **Integer** | How many changes to return. | [optional][default to 50] |
| **cursor** | **String** | The &#x60;nextCursor&#x60; of the previous page, unchanged. | [optional] |

### Return type

[**ListAdChanges200Response**](ListAdChanges200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restage_ad_change

> <GetAdChange200Response> restage_ad_change(change_id, opts)

Stage a failed ad change again

Makes a new staged change from a change that failed at confirm. Nothing is written to the ad network.  The new change holds the same request. It is checked for the calling user, and an edit is read against the current values of its object. The failed change stays readable until it is deleted, with `restaged: true`.  ### A change that may have made objects  The new change sends the same request again at confirm. A failed create may have made part of its objects on the ad network, and they would be made a second time.  Such a change answers `409` with `param: \"acknowledge\"`. `details.leftBehind` lists the objects the failure left, and `details.outcomeUnknown` is true when nothing tells what was made. Send `acknowledge: true` to stage it again anyway.  A failed create that left nothing behind is staged again without it.  ### Refused  A change that did not fail, a failed change that was already staged again, and a change whose kept uploads were deleted or moved to an earlier restage answer `409`. 

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
change_id = 'change_id_example' # String | The id of the failed change.
opts = {
  restage_ad_change_request: Zernio::RestageAdChangeRequest.new # RestageAdChangeRequest | 
}

begin
  # Stage a failed ad change again
  result = api_instance.restage_ad_change(change_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->restage_ad_change: #{e}"
end
```

#### Using the restage_ad_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdChange200Response>, Integer, Hash)> restage_ad_change_with_http_info(change_id, opts)

```ruby
begin
  # Stage a failed ad change again
  data, status_code, headers = api_instance.restage_ad_change_with_http_info(change_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdChange200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->restage_ad_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The id of the failed change. |  |
| **restage_ad_change_request** | [**RestageAdChangeRequest**](RestageAdChangeRequest.md) |  | [optional] |

### Return type

[**GetAdChange200Response**](GetAdChange200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_change

> <GetAdChange200Response> update_ad_change(change_id, opts)

Edit or refresh a staged ad change

Replaces the request body of a staged change, or reads its object again when no body is sent. The change keeps its id. Nothing is written to the ad network.  ### Edit  Send the new body: the same kind of body as the route the change was staged on, without `stage`. It passes the checks of staging again for the calling user. The object is read again, so the diff and the changed-since check start from its current values.  A change of type `operation` stores a whole request. Its new body goes through the route of that write, which checks it as a new staged request. The path and the query stay as they were staged.  Such an edit answers what that route answers when it refuses the body, and the change stays as it was. A request without a body has nothing to edit (`409`).  ### Refresh  Send no body. The object is read again with the body the change already holds. Use it on a change that reads `stale: true` after a confirm answered `409` `change_target_changed`: once refreshed it can be confirmed. 

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
opts = {
  request_body: { key: 3.56} # Hash<String, Object> | 
}

begin
  # Edit or refresh a staged ad change
  result = api_instance.update_ad_change(change_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->update_ad_change: #{e}"
end
```

#### Using the update_ad_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdChange200Response>, Integer, Hash)> update_ad_change_with_http_info(change_id, opts)

```ruby
begin
  # Edit or refresh a staged ad change
  data, status_code, headers = api_instance.update_ad_change_with_http_info(change_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdChange200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdChangesApi->update_ad_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The id of the staged change. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

[**GetAdChange200Response**](GetAdChange200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

