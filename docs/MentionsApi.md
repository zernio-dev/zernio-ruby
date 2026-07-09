# Zernio::MentionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_inbox_mentions**](MentionsApi.md#list_inbox_mentions) | **GET** /v1/inbox/mentions | List mentions |
| [**reply_to_mention**](MentionsApi.md#reply_to_mention) | **POST** /v1/inbox/mentions/reply | Reply to a mention |


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


## reply_to_mention

> <ReplyToMention200Response> reply_to_mention(reply_to_mention_request)

Reply to a mention

Reply to a mention of the connected account. Supported on Instagram only.  Two shapes, selected by whether `commentId` is present:  - **Comment mention** (someone @mentioned the account inside a comment): pass both   `mediaId` and `commentId`. Instagram posts a reply under that comment. - **Caption mention** (someone @mentioned the account in their media caption, so no   comment exists): pass `mediaId` only. Instagram posts a comment on their media.  Story mentions are not supported by Instagram's API.  Note that `GET /v1/inbox/mentions` currently returns LinkedIn mentions only and does not surface Instagram mentions. Source `mediaId` and `commentId` from Instagram's `comments` webhook, which is where mention notifications are delivered for accounts connected through Instagram Login. 

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
reply_to_mention_request = Zernio::ReplyToMentionRequest.new({account_id: 'account_id_example', media_id: 'media_id_example', message: 'message_example'}) # ReplyToMentionRequest | 

begin
  # Reply to a mention
  result = api_instance.reply_to_mention(reply_to_mention_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MentionsApi->reply_to_mention: #{e}"
end
```

#### Using the reply_to_mention_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplyToMention200Response>, Integer, Hash)> reply_to_mention_with_http_info(reply_to_mention_request)

```ruby
begin
  # Reply to a mention
  data, status_code, headers = api_instance.reply_to_mention_with_http_info(reply_to_mention_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplyToMention200Response>
rescue Zernio::ApiError => e
  puts "Error when calling MentionsApi->reply_to_mention_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reply_to_mention_request** | [**ReplyToMentionRequest**](ReplyToMentionRequest.md) |  |  |

### Return type

[**ReplyToMention200Response**](ReplyToMention200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

