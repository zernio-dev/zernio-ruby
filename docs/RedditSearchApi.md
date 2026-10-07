# Zernio::RedditSearchApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_reddit_feed**](RedditSearchApi.md#get_reddit_feed) | **GET** /v1/reddit/feed | Get subreddit feed |
| [**get_reddit_post_comments**](RedditSearchApi.md#get_reddit_post_comments) | **GET** /v1/reddit/comments/{postId} | Get the comments of a Reddit post |
| [**search_reddit**](RedditSearchApi.md#search_reddit) | **GET** /v1/reddit/search | Search posts |


## get_reddit_feed

> <SearchReddit200Response> get_reddit_feed(account_id, opts)

Get subreddit feed

Fetch posts from a subreddit feed. Supports sorting, time filtering, and cursor-based pagination.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RedditSearchApi.new
account_id = 'account_id_example' # String | 
opts = {
  subreddit: 'subreddit_example', # String | 
  sort: 'hot', # String | 
  limit: 56, # Integer | 
  after: 'after_example', # String | 
  t: 'hour' # String | 
}

begin
  # Get subreddit feed
  result = api_instance.get_reddit_feed(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->get_reddit_feed: #{e}"
end
```

#### Using the get_reddit_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchReddit200Response>, Integer, Hash)> get_reddit_feed_with_http_info(account_id, opts)

```ruby
begin
  # Get subreddit feed
  data, status_code, headers = api_instance.get_reddit_feed_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchReddit200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->get_reddit_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **subreddit** | **String** |  | [optional] |
| **sort** | **String** |  | [optional][default to &#39;hot&#39;] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **after** | **String** |  | [optional] |
| **t** | **String** |  | [optional] |

### Return type

[**SearchReddit200Response**](SearchReddit200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reddit_post_comments

> <GetRedditPostComments200Response> get_reddit_post_comments(post_id, account_id, opts)

Get the comments of a Reddit post

Reads the comments of any Reddit post the connected account can see, for example one found through `/v1/reddit/feed` or `/v1/reddit/search`, straight from Reddit on every call. The tree comes flattened in thread order (a reply follows its parent); rebuild it from `parentId`, which is `t3_…` for a reply to the post and `t1_…` for a reply to a comment. Deleted and removed comments are passed through as Reddit sends them (`[deleted]` / `[removed]`). Where Reddit truncates a thread, the ids it left out are listed in `more`; `commentId` fetches one such comment with its replies. A post Reddit no longer serves answers 404 and a private subreddit 403, both with `platform_api_error`. For comments on posts published through Zernio, `/v1/inbox/comments/{postId}` adds caching, moderation and replies. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RedditSearchApi.new
post_id = 'post_id_example' # String | Reddit post id, with or without the `t3_` prefix (as `id` or `fullname` on RedditPost).
account_id = 'account_id_example' # String | An active Reddit account the request is made as.
opts = {
  sort: 'new', # String | 
  limit: 56, # Integer | Maximum number of top-level comments.
  comment_id: 'comment_id_example' # String | Return only this comment and its replies, with or without the `t1_` prefix; pass an id from `more` to expand it.
}

begin
  # Get the comments of a Reddit post
  result = api_instance.get_reddit_post_comments(post_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->get_reddit_post_comments: #{e}"
end
```

#### Using the get_reddit_post_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRedditPostComments200Response>, Integer, Hash)> get_reddit_post_comments_with_http_info(post_id, account_id, opts)

```ruby
begin
  # Get the comments of a Reddit post
  data, status_code, headers = api_instance.get_reddit_post_comments_with_http_info(post_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRedditPostComments200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->get_reddit_post_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Reddit post id, with or without the &#x60;t3_&#x60; prefix (as &#x60;id&#x60; or &#x60;fullname&#x60; on RedditPost). |  |
| **account_id** | **String** | An active Reddit account the request is made as. |  |
| **sort** | **String** |  | [optional][default to &#39;new&#39;] |
| **limit** | **Integer** | Maximum number of top-level comments. | [optional][default to 25] |
| **comment_id** | **String** | Return only this comment and its replies, with or without the &#x60;t1_&#x60; prefix; pass an id from &#x60;more&#x60; to expand it. | [optional] |

### Return type

[**GetRedditPostComments200Response**](GetRedditPostComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_reddit

> <SearchReddit200Response> search_reddit(account_id, q, opts)

Search posts

Search Reddit posts using a connected account. Optionally scope to a specific subreddit.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RedditSearchApi.new
account_id = 'account_id_example' # String | 
q = 'q_example' # String | 
opts = {
  subreddit: 'subreddit_example', # String | 
  restrict_sr: '0', # String | 
  sort: 'relevance', # String | 
  limit: 56, # Integer | 
  after: 'after_example' # String | 
}

begin
  # Search posts
  result = api_instance.search_reddit(account_id, q, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->search_reddit: #{e}"
end
```

#### Using the search_reddit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchReddit200Response>, Integer, Hash)> search_reddit_with_http_info(account_id, q, opts)

```ruby
begin
  # Search posts
  data, status_code, headers = api_instance.search_reddit_with_http_info(account_id, q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchReddit200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RedditSearchApi->search_reddit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **q** | **String** |  |  |
| **subreddit** | **String** |  | [optional] |
| **restrict_sr** | **String** |  | [optional] |
| **sort** | **String** |  | [optional][default to &#39;new&#39;] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **after** | **String** |  | [optional] |

### Return type

[**SearchReddit200Response**](SearchReddit200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

