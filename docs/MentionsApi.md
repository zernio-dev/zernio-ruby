# Zernio::MentionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_inbox_mentions**](MentionsApi.md#list_inbox_mentions) | **GET** /v1/inbox/mentions | List mentions |


## list_inbox_mentions

> <ListInboxMentions200Response> list_inbox_mentions(opts)

List mentions

Returns mentions of your connected organization accounts, delivered via platform webhooks. Currently supports LinkedIn organization mentions.  Requires Inbox addon. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MentionsApi.new
opts = {
  account_id: 'account_id_example', # String | Filter by social account ID
  profile_id: 'profile_id_example', # String | Filter by profile ID
  sort_order: 'asc', # String | Sort order by publishedAt
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | Cursor for pagination (ID of the last item from the previous page)
}

begin
  # List mentions
  result = api_instance.list_inbox_mentions(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MentionsApi->list_inbox_mentions: #{e}"
end
```

#### Using the list_inbox_mentions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxMentions200Response>, Integer, Hash)> list_inbox_mentions_with_http_info(opts)

```ruby
begin
  # List mentions
  data, status_code, headers = api_instance.list_inbox_mentions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxMentions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling MentionsApi->list_inbox_mentions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Filter by social account ID | [optional] |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **sort_order** | **String** | Sort order by publishedAt | [optional][default to &#39;desc&#39;] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | Cursor for pagination (ID of the last item from the previous page) | [optional] |

### Return type

[**ListInboxMentions200Response**](ListInboxMentions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

