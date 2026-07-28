# Zernio::TwitterEngagementApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bookmark_post**](TwitterEngagementApi.md#bookmark_post) | **POST** /v1/twitter/bookmark | Bookmark a tweet |
| [**follow_user**](TwitterEngagementApi.md#follow_user) | **POST** /v1/twitter/follow | Follow a user |
| [**remove_bookmark**](TwitterEngagementApi.md#remove_bookmark) | **DELETE** /v1/twitter/bookmark | Remove bookmark |
| [**retweet_post**](TwitterEngagementApi.md#retweet_post) | **POST** /v1/twitter/retweet | Retweet a post |
| [**search_tweets**](TwitterEngagementApi.md#search_tweets) | **GET** /v1/twitter/search | Search recent tweets |
| [**undo_retweet**](TwitterEngagementApi.md#undo_retweet) | **DELETE** /v1/twitter/retweet | Undo retweet |
| [**unfollow_user**](TwitterEngagementApi.md#unfollow_user) | **DELETE** /v1/twitter/follow | Unfollow a user |


## bookmark_post

> <BookmarkPost200Response> bookmark_post(bookmark_post_request)

Bookmark a tweet

Bookmark a tweet by ID. Requires the bookmark.write OAuth scope. Rate limit: 50 requests per 15-min window. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
bookmark_post_request = Zernio::BookmarkPostRequest.new({account_id: 'account_id_example', tweet_id: 'tweet_id_example'}) # BookmarkPostRequest | 

begin
  # Bookmark a tweet
  result = api_instance.bookmark_post(bookmark_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->bookmark_post: #{e}"
end
```

#### Using the bookmark_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkPost200Response>, Integer, Hash)> bookmark_post_with_http_info(bookmark_post_request)

```ruby
begin
  # Bookmark a tweet
  data, status_code, headers = api_instance.bookmark_post_with_http_info(bookmark_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->bookmark_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmark_post_request** | [**BookmarkPostRequest**](BookmarkPostRequest.md) |  |  |

### Return type

[**BookmarkPost200Response**](BookmarkPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## follow_user

> <FollowUser200Response> follow_user(follow_user_request)

Follow a user

Follow a user on X/Twitter. Requires the follows.write OAuth scope. For protected accounts, a follow request is sent instead (pending_follow will be true). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
follow_user_request = Zernio::FollowUserRequest.new({account_id: 'account_id_example', target_user_id: 'target_user_id_example'}) # FollowUserRequest | 

begin
  # Follow a user
  result = api_instance.follow_user(follow_user_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->follow_user: #{e}"
end
```

#### Using the follow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FollowUser200Response>, Integer, Hash)> follow_user_with_http_info(follow_user_request)

```ruby
begin
  # Follow a user
  data, status_code, headers = api_instance.follow_user_with_http_info(follow_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FollowUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->follow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **follow_user_request** | [**FollowUserRequest**](FollowUserRequest.md) |  |  |

### Return type

[**FollowUser200Response**](FollowUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_bookmark

> <RemoveBookmark200Response> remove_bookmark(account_id, tweet_id)

Remove bookmark

Remove a bookmark from a tweet. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
account_id = 'account_id_example' # String | 
tweet_id = 'tweet_id_example' # String | The ID of the tweet to unbookmark

begin
  # Remove bookmark
  result = api_instance.remove_bookmark(account_id, tweet_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->remove_bookmark: #{e}"
end
```

#### Using the remove_bookmark_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveBookmark200Response>, Integer, Hash)> remove_bookmark_with_http_info(account_id, tweet_id)

```ruby
begin
  # Remove bookmark
  data, status_code, headers = api_instance.remove_bookmark_with_http_info(account_id, tweet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveBookmark200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->remove_bookmark_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tweet_id** | **String** | The ID of the tweet to unbookmark |  |

### Return type

[**RemoveBookmark200Response**](RemoveBookmark200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retweet_post

> <RetweetPost200Response> retweet_post(retweet_post_request)

Retweet a post

Retweet (repost) a tweet by ID. Rate limit: 50 requests per 15-min window. Shares the 300/3hr creation limit with tweet creation. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
retweet_post_request = Zernio::RetweetPostRequest.new({account_id: 'account_id_example', tweet_id: 'tweet_id_example'}) # RetweetPostRequest | 

begin
  # Retweet a post
  result = api_instance.retweet_post(retweet_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->retweet_post: #{e}"
end
```

#### Using the retweet_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetweetPost200Response>, Integer, Hash)> retweet_post_with_http_info(retweet_post_request)

```ruby
begin
  # Retweet a post
  data, status_code, headers = api_instance.retweet_post_with_http_info(retweet_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetweetPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->retweet_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retweet_post_request** | [**RetweetPostRequest**](RetweetPostRequest.md) |  |  |

### Return type

[**RetweetPost200Response**](RetweetPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_tweets

> <SearchTweets200Response> search_tweets(account_id, query, opts)

Search recent tweets

Search public tweets from the last 7 days matching an X search query, e.g. to discover tweets to reply to. The query string is passed through to X unchanged and supports X's search operators (`from:user`, `-is:retweet`, `is:reply`, `lang:en`, `\"exact phrase\"`, `conversation_id:123`, boolean `OR`, ...). Note that standalone operators like `is:` / `has:` / `lang:` must be combined with a keyword or `from:` clause.  To reply to a found tweet, pass its `id` as the twitter platform entry's `platformSpecificData.replyToTweetId` when creating a post.  Rate limit: 300 requests per 15-min window per connected account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
account_id = 'account_id_example' # String | The social account ID
query = 'query_example' # String | X search query, max 512 characters. Operators are passed through unchanged; X rejects malformed queries with a 400.
opts = {
  limit: 56, # Integer | Results per page. X requires a minimum of 10; values below 10 are rejected.
  since_id: 'since_id_example', # String | Only return tweets with an ID greater than (more recent than) this numeric tweet ID. Non-numeric values are rejected with 400.
  until_id: 'until_id_example', # String | Only return tweets with an ID less than (older than) this numeric tweet ID. Non-numeric values are rejected with 400.
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Oldest UTC timestamp (ISO 8601, inclusive), within the last 7 days
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Newest UTC timestamp (ISO 8601, exclusive), within the last 7 days
  cursor: 'cursor_example', # String | Pagination cursor from a previous response
  sort_order: 'recency' # String | 
}

begin
  # Search recent tweets
  result = api_instance.search_tweets(account_id, query, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->search_tweets: #{e}"
end
```

#### Using the search_tweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchTweets200Response>, Integer, Hash)> search_tweets_with_http_info(account_id, query, opts)

```ruby
begin
  # Search recent tweets
  data, status_code, headers = api_instance.search_tweets_with_http_info(account_id, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchTweets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->search_tweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID |  |
| **query** | **String** | X search query, max 512 characters. Operators are passed through unchanged; X rejects malformed queries with a 400. |  |
| **limit** | **Integer** | Results per page. X requires a minimum of 10; values below 10 are rejected. | [optional][default to 10] |
| **since_id** | **String** | Only return tweets with an ID greater than (more recent than) this numeric tweet ID. Non-numeric values are rejected with 400. | [optional] |
| **until_id** | **String** | Only return tweets with an ID less than (older than) this numeric tweet ID. Non-numeric values are rejected with 400. | [optional] |
| **start_time** | **Time** | Oldest UTC timestamp (ISO 8601, inclusive), within the last 7 days | [optional] |
| **end_time** | **Time** | Newest UTC timestamp (ISO 8601, exclusive), within the last 7 days | [optional] |
| **cursor** | **String** | Pagination cursor from a previous response | [optional] |
| **sort_order** | **String** |  | [optional][default to &#39;recency&#39;] |

### Return type

[**SearchTweets200Response**](SearchTweets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## undo_retweet

> <UndoRetweet200Response> undo_retweet(account_id, tweet_id)

Undo retweet

Undo a retweet (un-repost a tweet). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
account_id = 'account_id_example' # String | 
tweet_id = 'tweet_id_example' # String | The ID of the original tweet to un-retweet

begin
  # Undo retweet
  result = api_instance.undo_retweet(account_id, tweet_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->undo_retweet: #{e}"
end
```

#### Using the undo_retweet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UndoRetweet200Response>, Integer, Hash)> undo_retweet_with_http_info(account_id, tweet_id)

```ruby
begin
  # Undo retweet
  data, status_code, headers = api_instance.undo_retweet_with_http_info(account_id, tweet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UndoRetweet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->undo_retweet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tweet_id** | **String** | The ID of the original tweet to un-retweet |  |

### Return type

[**UndoRetweet200Response**](UndoRetweet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unfollow_user

> <UnfollowUser200Response> unfollow_user(account_id, target_user_id)

Unfollow a user

Unfollow a user on X/Twitter. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TwitterEngagementApi.new
account_id = 'account_id_example' # String | 
target_user_id = 'target_user_id_example' # String | The Twitter ID of the user to unfollow

begin
  # Unfollow a user
  result = api_instance.unfollow_user(account_id, target_user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->unfollow_user: #{e}"
end
```

#### Using the unfollow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnfollowUser200Response>, Integer, Hash)> unfollow_user_with_http_info(account_id, target_user_id)

```ruby
begin
  # Unfollow a user
  data, status_code, headers = api_instance.unfollow_user_with_http_info(account_id, target_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnfollowUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TwitterEngagementApi->unfollow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **target_user_id** | **String** | The Twitter ID of the user to unfollow |  |

### Return type

[**UnfollowUser200Response**](UnfollowUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

