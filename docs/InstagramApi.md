# Zernio::InstagramApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_instagram_audio**](InstagramApi.md#get_instagram_audio) | **GET** /v1/accounts/{accountId}/instagram/audio/{audioId} | Get Instagram audio metadata |
| [**get_instagram_business_discovery**](InstagramApi.md#get_instagram_business_discovery) | **GET** /v1/accounts/{accountId}/instagram/business-discovery | Look up a public Instagram Business account |
| [**get_instagram_mentioned_comment**](InstagramApi.md#get_instagram_mentioned_comment) | **GET** /v1/accounts/{accountId}/instagram/mentions/comments/{commentId} | Get a comment that mentions an Instagram account |
| [**get_instagram_mentioned_media**](InstagramApi.md#get_instagram_mentioned_media) | **GET** /v1/accounts/{accountId}/instagram/mentions/media/{mediaId} | Get a post that mentions an Instagram account in its caption |
| [**get_instagram_publishing_limit**](InstagramApi.md#get_instagram_publishing_limit) | **GET** /v1/accounts/{accountId}/instagram/publishing-limit | Get Instagram publishing limit |
| [**get_instagram_story_insights**](InstagramApi.md#get_instagram_story_insights) | **GET** /v1/accounts/{accountId}/instagram/stories/{storyId}/insights | Get Instagram story insights |
| [**list_instagram_live_media**](InstagramApi.md#list_instagram_live_media) | **GET** /v1/accounts/{accountId}/instagram/live-media | List the live broadcasts of an Instagram account |
| [**list_instagram_media_collaborators**](InstagramApi.md#list_instagram_media_collaborators) | **GET** /v1/accounts/{accountId}/instagram/media/{mediaId}/collaborators | List the collaborators of an Instagram post |
| [**list_instagram_stories**](InstagramApi.md#list_instagram_stories) | **GET** /v1/accounts/{accountId}/instagram/stories | List active Instagram stories |
| [**list_instagram_tagged_media**](InstagramApi.md#list_instagram_tagged_media) | **GET** /v1/accounts/{accountId}/instagram/tags | List the posts an Instagram account is tagged in |
| [**search_instagram_audio**](InstagramApi.md#search_instagram_audio) | **GET** /v1/accounts/{accountId}/instagram/audio | Search Instagram audio |


## get_instagram_audio

> <GetInstagramAudio200Response> get_instagram_audio(account_id, audio_id)

Get Instagram audio metadata

Fetch one audio asset's metadata by ID. Use it to re-validate a stored `audioId` before a scheduled Reel publishes, or to refresh the preview `downloadUrl` (Meta expires preview URLs after roughly 1.5 days).  Same connection requirement as the search endpoint: Facebook-Login Instagram accounts only. 

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
audio_id = 'audio_id_example' # String | Instagram audio asset ID

begin
  # Get Instagram audio metadata
  result = api_instance.get_instagram_audio(account_id, audio_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_audio: #{e}"
end
```

#### Using the get_instagram_audio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInstagramAudio200Response>, Integer, Hash)> get_instagram_audio_with_http_info(account_id, audio_id)

```ruby
begin
  # Get Instagram audio metadata
  data, status_code, headers = api_instance.get_instagram_audio_with_http_info(account_id, audio_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInstagramAudio200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_audio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the Instagram account |  |
| **audio_id** | **String** | Instagram audio asset ID |  |

### Return type

[**GetInstagramAudio200Response**](GetInstagramAudio200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_business_discovery

> <InstagramBusinessDiscovery> get_instagram_business_discovery(account_id, username, opts)

Look up a public Instagram Business account

Returns the public profile and most recent media of any Instagram Business or Creator account, looked up by username through one of your connected Instagram accounts. Useful for competitor and market research. Personal accounts and private accounts cannot be looked up.  Requires an Instagram account connected via **Facebook Login**. Meta serves business discovery on graph.facebook.com only, so accounts connected with classic Instagram Login receive a 400 (`instagram_business_discovery_requires_facebook_login`) and must be reconnected choosing the Facebook option. Any one such account can look up any public Business or Creator handle.  `likeCount` is null when the owner hides like counts.  Media URLs are temporary, and fields Meta does not return come back as null, never omitted. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).
username = 'nike' # String | Instagram handle to look up, with or without the leading @. Case-insensitive.
opts = {
  limit: 56 # Integer | How many of the most recent media to return.
}

begin
  # Look up a public Instagram Business account
  result = api_instance.get_instagram_business_discovery(account_id, username, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_business_discovery: #{e}"
end
```

#### Using the get_instagram_business_discovery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstagramBusinessDiscovery>, Integer, Hash)> get_instagram_business_discovery_with_http_info(account_id, username, opts)

```ruby
begin
  # Look up a public Instagram Business account
  data, status_code, headers = api_instance.get_instagram_business_discovery_with_http_info(account_id, username, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstagramBusinessDiscovery>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_business_discovery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |
| **username** | **String** | Instagram handle to look up, with or without the leading @. Case-insensitive. |  |
| **limit** | **Integer** | How many of the most recent media to return. | [optional][default to 12] |

### Return type

[**InstagramBusinessDiscovery**](InstagramBusinessDiscovery.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_mentioned_comment

> <InstagramMentionedComment> get_instagram_mentioned_comment(account_id, comment_id)

Get a comment that mentions an Instagram account

Returns a comment in which another Instagram user @mentioned the connected account, with the post it was left on.  Meta sends the comment ID in its mention notification and offers no list of mentions, so this reads one mention by ID. Meta answers an error when comments are disabled on that post.  ### Requires Facebook Login  The Instagram account must be connected via **Facebook Login**. Meta serves mentions on graph.facebook.com only.  Accounts connected with classic Instagram Login receive a 400 (`instagram_mentions_require_facebook_login`) and must be reconnected choosing the Facebook option. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).
comment_id = '17894227972186120' # String | Instagram comment ID of the comment that mentions the account (digits only).

begin
  # Get a comment that mentions an Instagram account
  result = api_instance.get_instagram_mentioned_comment(account_id, comment_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_mentioned_comment: #{e}"
end
```

#### Using the get_instagram_mentioned_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstagramMentionedComment>, Integer, Hash)> get_instagram_mentioned_comment_with_http_info(account_id, comment_id)

```ruby
begin
  # Get a comment that mentions an Instagram account
  data, status_code, headers = api_instance.get_instagram_mentioned_comment_with_http_info(account_id, comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstagramMentionedComment>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_mentioned_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |
| **comment_id** | **String** | Instagram comment ID of the comment that mentions the account (digits only). |  |

### Return type

[**InstagramMentionedComment**](InstagramMentionedComment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_mentioned_media

> <InstagramMentionedMedia> get_instagram_mentioned_media(account_id, media_id)

Get a post that mentions an Instagram account in its caption

Returns a post in which another Instagram user @mentioned the connected account in the caption. Meta sends the media ID in its mention notification and offers no list of mentions, so this reads one mention by ID. Mentions in Stories are not supported by Meta.  Requires an Instagram account connected via **Facebook Login**. Meta serves mentions on graph.facebook.com only, so accounts connected with classic Instagram Login receive a 400 (`instagram_mentions_require_facebook_login`) and must be reconnected choosing the Facebook option. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).
media_id = '18027939643230671' # String | Instagram media ID of the post that mentions the account (digits only).

begin
  # Get a post that mentions an Instagram account in its caption
  result = api_instance.get_instagram_mentioned_media(account_id, media_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_mentioned_media: #{e}"
end
```

#### Using the get_instagram_mentioned_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstagramMentionedMedia>, Integer, Hash)> get_instagram_mentioned_media_with_http_info(account_id, media_id)

```ruby
begin
  # Get a post that mentions an Instagram account in its caption
  data, status_code, headers = api_instance.get_instagram_mentioned_media_with_http_info(account_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstagramMentionedMedia>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->get_instagram_mentioned_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |
| **media_id** | **String** | Instagram media ID of the post that mentions the account (digits only). |  |

### Return type

[**InstagramMentionedMedia**](InstagramMentionedMedia.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

Returns metrics for a single story. The `source` field discriminates between three states:  - `live`: fetched from Meta in real time (story is still active) - `cached`: fetched from a persisted `story_insights` webhook payload (story has expired but we received its final-state metrics from Meta) - `unavailable`: story has expired and Meta sent no `story_insights` webhook for it  Meta sends that webhook most reliably for accounts connected with Facebook Login or with their linked Facebook Page connected. So read insights while the story is live if you need final numbers.  Meta can report an expired story as an empty successful result rather than an error. So an expired story resolves to `cached` or `unavailable` even though the upstream request itself succeeded.  ### Field semantics  Field semantics follow Meta's API.  - Counts below 5 may be returned as 0 due to Meta's privacy floor on small audiences. - The `navigation` field is the sum of `tapsForward + tapsBack + exits + swipesForward`. 

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


## list_instagram_live_media

> <ListInstagramLiveMedia200Response> list_instagram_live_media(account_id)

List the live broadcasts of an Instagram account

Returns the live videos the connected Instagram account is broadcasting right now.  Meta only returns broadcasts in progress at the time of the request, so the list is empty when nothing is live (a 200, not an error).  Pair the returned `id` with comments flagged as live (the live_comments webhook field) or with a `live_comment` comment automation.  ### Requires Facebook Login  The Instagram account must be connected via **Facebook Login**. Meta documents the live_media edge on graph.facebook.com only.  Accounts connected with classic Instagram Login receive a 400 (`instagram_live_media_requires_facebook_login`) and must be reconnected choosing the Facebook option. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).

begin
  # List the live broadcasts of an Instagram account
  result = api_instance.list_instagram_live_media(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_live_media: #{e}"
end
```

#### Using the list_instagram_live_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInstagramLiveMedia200Response>, Integer, Hash)> list_instagram_live_media_with_http_info(account_id)

```ruby
begin
  # List the live broadcasts of an Instagram account
  data, status_code, headers = api_instance.list_instagram_live_media_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInstagramLiveMedia200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_live_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |

### Return type

[**ListInstagramLiveMedia200Response**](ListInstagramLiveMedia200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instagram_media_collaborators

> <ListInstagramMediaCollaborators200Response> list_instagram_media_collaborators(account_id, media_id)

List the collaborators of an Instagram post

Returns the accounts invited as collaborators on one of the connected account's own posts (feed image, Reel or carousel), with whether each invitation was accepted or is still pending. Use it to check who accepted a collab post after publishing it.  Requires an Instagram account connected via **Facebook Login**. Meta serves this edge on graph.facebook.com only, so accounts connected with classic Instagram Login receive a 400 (`instagram_collaborators_require_facebook_login`) and must be reconnected choosing the Facebook option.  Meta returns at most 5 collaborators and only those who allow collaborator tagging. A post without collaborators returns an empty list. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).
media_id = '18063237463112345' # String | Instagram media ID of a post published by this account (digits only, e.g. the platformPostId of a published post).

begin
  # List the collaborators of an Instagram post
  result = api_instance.list_instagram_media_collaborators(account_id, media_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_media_collaborators: #{e}"
end
```

#### Using the list_instagram_media_collaborators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInstagramMediaCollaborators200Response>, Integer, Hash)> list_instagram_media_collaborators_with_http_info(account_id, media_id)

```ruby
begin
  # List the collaborators of an Instagram post
  data, status_code, headers = api_instance.list_instagram_media_collaborators_with_http_info(account_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInstagramMediaCollaborators200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_media_collaborators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |
| **media_id** | **String** | Instagram media ID of a post published by this account (digits only, e.g. the platformPostId of a published post). |  |

### Return type

[**ListInstagramMediaCollaborators200Response**](ListInstagramMediaCollaborators200Response.md)

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


## list_instagram_tagged_media

> <ListInstagramTaggedMedia200Response> list_instagram_tagged_media(account_id, opts)

List the posts an Instagram account is tagged in

Returns the media where other Instagram users photo-tagged the connected account, newest first. Private media is never returned.  Cursor-paginated: pass `nextCursor` from the previous response as `cursor` to read the next page. `nextCursor` is null when there are no more pages. Meta does not say whether a page is the last one, so the final page can come back empty with `nextCursor` null.  Requires an Instagram account connected via **Facebook Login**. Meta does not give Instagram Login access to tagging, so accounts connected with classic Instagram Login receive a 400 (`instagram_tagged_media_requires_facebook_login`) and must be reconnected choosing the Facebook option. 

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
account_id = 'account_id_example' # String | The ID of a connected Instagram account (Facebook Login).
opts = {
  limit: 56, # Integer | Page size.
  cursor: 'cursor_example' # String | The `nextCursor` of the previous page.
}

begin
  # List the posts an Instagram account is tagged in
  result = api_instance.list_instagram_tagged_media(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_tagged_media: #{e}"
end
```

#### Using the list_instagram_tagged_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInstagramTaggedMedia200Response>, Integer, Hash)> list_instagram_tagged_media_with_http_info(account_id, opts)

```ruby
begin
  # List the posts an Instagram account is tagged in
  data, status_code, headers = api_instance.list_instagram_tagged_media_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInstagramTaggedMedia200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->list_instagram_tagged_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of a connected Instagram account (Facebook Login). |  |
| **limit** | **Integer** | Page size. | [optional][default to 25] |
| **cursor** | **String** | The &#x60;nextCursor&#x60; of the previous page. | [optional] |

### Return type

[**ListInstagramTaggedMedia200Response**](ListInstagramTaggedMedia200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_instagram_audio

> <SearchInstagramAudio200Response> search_instagram_audio(account_id, audio_type, opts)

Search Instagram audio

Search Instagram's audio catalog (licensed music or original sounds), or list what is currently trending by omitting `q`. Returns up to ~30 assets; Meta exposes no pagination on this edge.  Pass the returned `audioId` as `platformSpecificData.audioConfiguration.audioId` when creating a Reel to publish it with that track.  Requires an Instagram account connected via **Facebook Login**. Meta hosts this catalog on graph.facebook.com only, so accounts connected with classic Instagram Login receive a 400 (`instagram_audio_requires_facebook_login`) and must be reconnected choosing the Facebook option. 

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
audio_type = 'music' # String | Catalog to search: licensed music or original sounds from Reels.
opts = {
  q: 'q_example' # String | Search keywords. Omit to get the current trending list.
}

begin
  # Search Instagram audio
  result = api_instance.search_instagram_audio(account_id, audio_type, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->search_instagram_audio: #{e}"
end
```

#### Using the search_instagram_audio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchInstagramAudio200Response>, Integer, Hash)> search_instagram_audio_with_http_info(account_id, audio_type, opts)

```ruby
begin
  # Search Instagram audio
  data, status_code, headers = api_instance.search_instagram_audio_with_http_info(account_id, audio_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchInstagramAudio200Response>
rescue Zernio::ApiError => e
  puts "Error when calling InstagramApi->search_instagram_audio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the Instagram account |  |
| **audio_type** | **String** | Catalog to search: licensed music or original sounds from Reels. |  |
| **q** | **String** | Search keywords. Omit to get the current trending list. | [optional] |

### Return type

[**SearchInstagramAudio200Response**](SearchInstagramAudio200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

