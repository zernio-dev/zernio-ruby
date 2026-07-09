# Zernio::InstagramApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_instagram_publishing_limit**](InstagramApi.md#get_instagram_publishing_limit) | **GET** /v1/accounts/{accountId}/instagram/publishing-limit | Get Instagram publishing limit |
| [**get_instagram_story_insights**](InstagramApi.md#get_instagram_story_insights) | **GET** /v1/accounts/{accountId}/instagram/stories/{storyId}/insights | Get Instagram story insights |
| [**list_instagram_stories**](InstagramApi.md#list_instagram_stories) | **GET** /v1/accounts/{accountId}/instagram/stories | List active Instagram stories |


## get_instagram_publishing_limit

> <GetInstagramPublishingLimit200Response> get_instagram_publishing_limit(account_id)

Get Instagram publishing limit

Returns the account's remaining content-publishing quota for Instagram's rolling 24-hour window, so you can pace publishing and warn before the cap is reached.  `quotaUsage` counts containers published since the start of the window. Always compare against the returned `quotaTotal` rather than hardcoding a number: Meta's prose documentation and the live API disagree on the value, and the live value is authoritative. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InstagramApi.new
account_id = 'account_id_example' # String | The ID of the Instagram account

begin
  # Get Instagram publishing limit
  result = api_instance.get_instagram_publishing_limit(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_publishing_limit: #{e}"
end
```

#### Using the get_instagram_publishing_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInstagramPublishingLimit200Response>, Integer, Hash)> get_instagram_publishing_limit_with_http_info(account_id)

```ruby
begin
  # Get Instagram publishing limit
  data, status_code, headers = api_instance.get_instagram_publishing_limit_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInstagramPublishingLimit200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_publishing_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the Instagram account |  |

### Return type

[**GetInstagramPublishingLimit200Response**](GetInstagramPublishingLimit200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_story_insights

> <GetInstagramStoryInsights200Response> get_instagram_story_insights(account_id, story_id)

Get Instagram story insights

Returns metrics for a single story. The `source` field discriminates between three states:  - `live` — fetched from Meta in real time (story is still active) - `cached` — fetched from a persisted `story_insights` webhook payload   (story has expired but we received its final-state metrics from Meta) - `unavailable` — story has expired and we never received its webhook   payload (for example, the account connected after the story expired)  Field semantics follow Meta's API. Counts below 5 may be returned as 0 due to Meta's privacy floor on small audiences. The `navigation` field is the sum of `tapsForward + tapsBack + exits + swipesForward`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InstagramApi.new
account_id = 'account_id_example' # String | The Instagram account ID
story_id = 'story_id_example' # String | The Instagram media ID of the story.

begin
  # Get Instagram story insights
  result = api_instance.get_instagram_story_insights(account_id, story_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_story_insights: #{e}"
end
```

#### Using the get_instagram_story_insights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInstagramStoryInsights200Response>, Integer, Hash)> get_instagram_story_insights_with_http_info(account_id, story_id)

```ruby
begin
  # Get Instagram story insights
  data, status_code, headers = api_instance.get_instagram_story_insights_with_http_info(account_id, story_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInstagramStoryInsights200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_story_insights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Instagram account ID |  |
| **story_id** | **String** | The Instagram media ID of the story. |  |

### Return type

[**GetInstagramStoryInsights200Response**](GetInstagramStoryInsights200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instagram_stories

> <ListInstagramStories200Response> list_instagram_stories(account_id)

List active Instagram stories

Returns the IG Business/Creator account's currently-active stories. Meta keeps stories live for 24h; expired stories are not returned.  Limitations propagated from Meta (these are NOT bugs): - 24h window only - Live videos excluded - Reshared stories not returned - `mediaUrl` may be null if Meta flagged the story for copyright - `caption`, `likeCount`, `commentsCount` do not apply to story media 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InstagramApi.new
account_id = 'account_id_example' # String | The Instagram account ID

begin
  # List active Instagram stories
  result = api_instance.list_instagram_stories(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_stories: #{e}"
end
```

#### Using the list_instagram_stories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInstagramStories200Response>, Integer, Hash)> list_instagram_stories_with_http_info(account_id)

```ruby
begin
  # List active Instagram stories
  data, status_code, headers = api_instance.list_instagram_stories_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInstagramStories200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_stories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Instagram account ID |  |

### Return type

[**ListInstagramStories200Response**](ListInstagramStories200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

