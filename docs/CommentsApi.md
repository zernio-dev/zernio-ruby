# Zernio::CommentsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_inbox_comment**](CommentsApi.md#delete_inbox_comment) | **DELETE** /v1/inbox/comments/{postId} | Delete comment |
| [**edit_inbox_comment**](CommentsApi.md#edit_inbox_comment) | **PATCH** /v1/inbox/comments/{postId}/{commentId} | Edit comment |
| [**get_inbox_post_comments**](CommentsApi.md#get_inbox_post_comments) | **GET** /v1/inbox/comments/{postId} | Get post comments |
| [**hide_inbox_comment**](CommentsApi.md#hide_inbox_comment) | **POST** /v1/inbox/comments/{postId}/{commentId}/hide | Hide comment |
| [**like_inbox_comment**](CommentsApi.md#like_inbox_comment) | **POST** /v1/inbox/comments/{postId}/{commentId}/like | Like comment |
| [**like_post**](CommentsApi.md#like_post) | **POST** /v1/inbox/posts/{postId}/like | Like post |
| [**list_inbox_comments**](CommentsApi.md#list_inbox_comments) | **GET** /v1/inbox/comments | List commented posts |
| [**reply_to_inbox_post**](CommentsApi.md#reply_to_inbox_post) | **POST** /v1/inbox/comments/{postId} | Reply to comment |
| [**send_private_reply_to_comment**](CommentsApi.md#send_private_reply_to_comment) | **POST** /v1/inbox/comments/{postId}/{commentId}/private-reply | Send private reply |
| [**set_comment_moderation**](CommentsApi.md#set_comment_moderation) | **POST** /v1/inbox/comments/{postId}/{commentId}/moderation | Set comment moderation status |
| [**unhide_inbox_comment**](CommentsApi.md#unhide_inbox_comment) | **DELETE** /v1/inbox/comments/{postId}/{commentId}/hide | Unhide comment |
| [**unlike_inbox_comment**](CommentsApi.md#unlike_inbox_comment) | **DELETE** /v1/inbox/comments/{postId}/{commentId}/like | Unlike comment |
| [**unlike_post**](CommentsApi.md#unlike_post) | **DELETE** /v1/inbox/posts/{postId}/like | Unlike post |


## delete_inbox_comment

> <DeleteInboxComment200Response> delete_inbox_comment(post_id, account_id, comment_id)

Delete comment

Delete a comment on a post. Supported by Facebook, Instagram, Bluesky, Reddit, YouTube, and LinkedIn. Requires accountId and commentId query parameters. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | Zernio post ID or platform-specific post ID. LinkedIn third-party posts accept full activity URN or numeric ID.
account_id = 'account_id_example' # String | 
comment_id = 'comment_id_example' # String | For LinkedIn, accepts either the numeric comment ID or the composite comment URN returned by the comments listing (e.g. urn:li:comment:(threadUrn,id))

begin
  # Delete comment
  result = api_instance.delete_inbox_comment(post_id, account_id, comment_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->delete_inbox_comment: #{e}"
end
```

#### Using the delete_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteInboxComment200Response>, Integer, Hash)> delete_inbox_comment_with_http_info(post_id, account_id, comment_id)

```ruby
begin
  # Delete comment
  data, status_code, headers = api_instance.delete_inbox_comment_with_http_info(post_id, account_id, comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->delete_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID or platform-specific post ID. LinkedIn third-party posts accept full activity URN or numeric ID. |  |
| **account_id** | **String** |  |  |
| **comment_id** | **String** | For LinkedIn, accepts either the numeric comment ID or the composite comment URN returned by the comments listing (e.g. urn:li:comment:(threadUrn,id)) |  |

### Return type

[**DeleteInboxComment200Response**](DeleteInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_inbox_comment

> <EditInboxComment200Response> edit_inbox_comment(post_id, comment_id, edit_inbox_comment_request)

Edit comment

Edit the body of a comment the connected account posted. Supported on Reddit only.  Reddit keeps the same comment id after an edit. Reddit exposes no API to edit a post title, and a link post has no editable body. To edit a published post's body, use `POST /v1/posts/{postId}/edit`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
edit_inbox_comment_request = Zernio::EditInboxCommentRequest.new({account_id: 'account_id_example', platform: 'reddit', content: 'content_example'}) # EditInboxCommentRequest | 

begin
  # Edit comment
  result = api_instance.edit_inbox_comment(post_id, comment_id, edit_inbox_comment_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->edit_inbox_comment: #{e}"
end
```

#### Using the edit_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditInboxComment200Response>, Integer, Hash)> edit_inbox_comment_with_http_info(post_id, comment_id, edit_inbox_comment_request)

```ruby
begin
  # Edit comment
  data, status_code, headers = api_instance.edit_inbox_comment_with_http_info(post_id, comment_id, edit_inbox_comment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->edit_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **edit_inbox_comment_request** | [**EditInboxCommentRequest**](EditInboxCommentRequest.md) |  |  |

### Return type

[**EditInboxComment200Response**](EditInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_inbox_post_comments

> <GetInboxPostComments200Response> get_inbox_post_comments(post_id, account_id, opts)

Get post comments

Fetch comments for a specific post. Requires accountId query parameter.  On Facebook and Instagram, passing a COMMENT id as `postId` is also supported and returns that comment's replies instead of the post's top-level comments. This is not available on YouTube, where `postId` must be a video id.  Responses are cached for up to 10 minutes, so a page may lag new comments by that window. Do not poll this endpoint for real-time updates: subscribe to the `comment.received` webhook, which delivers new comments as they arrive. Your own writes (creating, replying to, or deleting a comment) refresh the cache immediately. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | Zernio post ID or platform-specific post ID. Zernio IDs are auto-resolved. LinkedIn third-party posts accept full activity URN or numeric ID. On Facebook and Instagram, a comment ID is also accepted here and returns that comment's replies.
account_id = 'account_id_example' # String | 
opts = {
  subreddit: 'subreddit_example', # String | (Reddit only) Subreddit name
  limit: 56, # Integer | Maximum number of comments to return
  cursor: 'cursor_example', # String | Pagination cursor, returned by a previous call as `pagination.cursor`. This is the platform's own opaque paging value passed through verbatim: never construct, decode or validate it client-side.
  comment_id: 'comment_id_example' # String | (Reddit only) Get replies to a specific comment
}

begin
  # Get post comments
  result = api_instance.get_inbox_post_comments(post_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->get_inbox_post_comments: #{e}"
end
```

#### Using the get_inbox_post_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxPostComments200Response>, Integer, Hash)> get_inbox_post_comments_with_http_info(post_id, account_id, opts)

```ruby
begin
  # Get post comments
  data, status_code, headers = api_instance.get_inbox_post_comments_with_http_info(post_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxPostComments200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->get_inbox_post_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID or platform-specific post ID. Zernio IDs are auto-resolved. LinkedIn third-party posts accept full activity URN or numeric ID. On Facebook and Instagram, a comment ID is also accepted here and returns that comment&#39;s replies. |  |
| **account_id** | **String** |  |  |
| **subreddit** | **String** | (Reddit only) Subreddit name | [optional] |
| **limit** | **Integer** | Maximum number of comments to return | [optional][default to 25] |
| **cursor** | **String** | Pagination cursor, returned by a previous call as &#x60;pagination.cursor&#x60;. This is the platform&#39;s own opaque paging value passed through verbatim: never construct, decode or validate it client-side. | [optional] |
| **comment_id** | **String** | (Reddit only) Get replies to a specific comment | [optional] |

### Return type

[**GetInboxPostComments200Response**](GetInboxPostComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## hide_inbox_comment

> <HideInboxComment200Response> hide_inbox_comment(post_id, comment_id, hide_inbox_comment_request)

Hide comment

Hide a comment on a post. Supported by Facebook, Instagram, Threads, and X/Twitter. Hidden comments are only visible to the commenter and page admin. For X/Twitter, the reply must belong to a conversation started by the authenticated user. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
hide_inbox_comment_request = Zernio::HideInboxCommentRequest.new({account_id: 'account_id_example'}) # HideInboxCommentRequest | 

begin
  # Hide comment
  result = api_instance.hide_inbox_comment(post_id, comment_id, hide_inbox_comment_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->hide_inbox_comment: #{e}"
end
```

#### Using the hide_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HideInboxComment200Response>, Integer, Hash)> hide_inbox_comment_with_http_info(post_id, comment_id, hide_inbox_comment_request)

```ruby
begin
  # Hide comment
  data, status_code, headers = api_instance.hide_inbox_comment_with_http_info(post_id, comment_id, hide_inbox_comment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HideInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->hide_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **hide_inbox_comment_request** | [**HideInboxCommentRequest**](HideInboxCommentRequest.md) |  |  |

### Return type

[**HideInboxComment200Response**](HideInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## like_inbox_comment

> <LikeInboxComment200Response> like_inbox_comment(post_id, comment_id, like_inbox_comment_request)

Like comment

Like or upvote a comment on a post. Supported platforms: Facebook, Twitter/X, Bluesky, Reddit, LinkedIn. For Bluesky, the cid (content identifier) is required in the request body. For LinkedIn, pass the composite comment URN returned by the comments endpoints as commentId; an optional reactionType picks the reaction (defaults to LIKE), and accounts connected before the social-feed scopes were requested get a 403 with code `linkedin_reconnect_required`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
like_inbox_comment_request = Zernio::LikeInboxCommentRequest.new({account_id: 'account_id_example'}) # LikeInboxCommentRequest | 

begin
  # Like comment
  result = api_instance.like_inbox_comment(post_id, comment_id, like_inbox_comment_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->like_inbox_comment: #{e}"
end
```

#### Using the like_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LikeInboxComment200Response>, Integer, Hash)> like_inbox_comment_with_http_info(post_id, comment_id, like_inbox_comment_request)

```ruby
begin
  # Like comment
  data, status_code, headers = api_instance.like_inbox_comment_with_http_info(post_id, comment_id, like_inbox_comment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LikeInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->like_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **like_inbox_comment_request** | [**LikeInboxCommentRequest**](LikeInboxCommentRequest.md) |  |  |

### Return type

[**LikeInboxComment200Response**](LikeInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## like_post

> <LikePost200Response> like_post(post_id, like_post_request)

Like post

Like (or react to) a post as a connected account. Supported platforms: LinkedIn, Twitter/X, Facebook, YouTube, Bluesky. Instagram, Threads, TikTok and Pinterest expose no like endpoint in their APIs and return 400. Reddit returns 400 too, pointing at `POST /v1/accounts/{accountId}/reddit-vote`, which covers upvote, downvote and clear on both posts and comments.  The account does not have to be the one that published the post, which is what makes executive engagement possible: pass an exec's `accountId` and the brand post's ID. `postId` accepts either a Zernio post ID or the platform's native post ID. A Zernio post ID resolves to the entry for `accountId`, falling back to the post's single entry on the same platform (two entries on that platform is a 400, so pass the native ID).  LinkedIn requires the `w_member_social_feed` / `w_organization_social_feed` scopes, which are not retroactive: accounts connected before those were requested get a 403 with code `linkedin_reconnect_required` until the user reconnects the account. YouTube spends 50 quota units per call. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | Zernio post ID or the platform's native post ID
like_post_request = Zernio::LikePostRequest.new({account_id: 'account_id_example'}) # LikePostRequest | 

begin
  # Like post
  result = api_instance.like_post(post_id, like_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->like_post: #{e}"
end
```

#### Using the like_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LikePost200Response>, Integer, Hash)> like_post_with_http_info(post_id, like_post_request)

```ruby
begin
  # Like post
  data, status_code, headers = api_instance.like_post_with_http_info(post_id, like_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LikePost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->like_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID or the platform&#39;s native post ID |  |
| **like_post_request** | [**LikePostRequest**](LikePostRequest.md) |  |  |

### Return type

[**LikePost200Response**](LikePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_inbox_comments

> <ListInboxComments200Response> list_inbox_comments(opts)

List commented posts

Returns posts with comment counts from all connected accounts. Aggregates data across multiple accounts.  Responses are cached for up to 10 minutes, so the feed may lag new comments by that window. Do not poll this endpoint for real-time updates: subscribe to the `comment.received` webhook, which fires for every new comment across your posts and carries the post reference needed to keep this list current.  For users with the Ads add-on (Metronome plans always qualify), the user's Meta ads (boosted/dark posts) are included too. There's one row per (ad, placement-with-comments): an ad that runs on both Facebook feed and Instagram feed produces up to two rows (the Page dark post and the IG media have separate comment threads), each flagged `isAd: true` with `adId` and `placement` (`id` is `{adId}:{placement}`). Use `?platform=metaads` to return *only* ad rows; passing `facebook`/`instagram` returns *organic* posts only (no ads); omitting `platform` returns both. Fetch a row's thread from GET /v1/ads/{adId}/comments?placement={placement}. Ad comment counts are read with the Marketing API token (Facebook side) or the connected Instagram account's token (Instagram side); a row whose count can't be read is omitted.  Pagination walks each account's platform listing. Following `nextCursor` reaches past the first page on Facebook, Instagram, Threads, LinkedIn and YouTube, since they are the platforms that support a server-side date window; on the others the listing stops at its first page. Cursor pagination is only coherent for the default sort (`sortBy=date`, `sortOrder=desc`): with `sortOrder=asc`, or with `sortBy=comments`, the cursor filter does not match the sort order and the second page is unreliable.  `nextCursor` is opaque: pass it back verbatim, never construct or parse it, its composition may change without notice. Because each page re-queries a live window, results can still shift between requests, so dedupe by `id` on the client.  `commentCount` semantics differ by platform: YouTube's includes replies, Facebook's counts top-level comments only. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter by profile ID
  platform: 'facebook', # String | Filter by platform. `metaads` is a synthetic value meaning the user's ads (boosted/dark posts) only; `facebook`/`instagram` return organic posts only.
  min_comments: 56, # Integer | Minimum comment count
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Posts created after this date
  sort_by: 'date', # String | Sort field
  sort_order: 'asc', # String | Sort order
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  account_id: 'account_id_example' # String | Filter by specific social account ID
}

begin
  # List commented posts
  result = api_instance.list_inbox_comments(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->list_inbox_comments: #{e}"
end
```

#### Using the list_inbox_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxComments200Response>, Integer, Hash)> list_inbox_comments_with_http_info(opts)

```ruby
begin
  # List commented posts
  data, status_code, headers = api_instance.list_inbox_comments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxComments200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->list_inbox_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **platform** | **String** | Filter by platform. &#x60;metaads&#x60; is a synthetic value meaning the user&#39;s ads (boosted/dark posts) only; &#x60;facebook&#x60;/&#x60;instagram&#x60; return organic posts only. | [optional] |
| **min_comments** | **Integer** | Minimum comment count | [optional] |
| **since** | **Time** | Posts created after this date | [optional] |
| **sort_by** | **String** | Sort field | [optional][default to &#39;date&#39;] |
| **sort_order** | **String** | Sort order | [optional][default to &#39;desc&#39;] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** |  | [optional] |
| **account_id** | **String** | Filter by specific social account ID | [optional] |

### Return type

[**ListInboxComments200Response**](ListInboxComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_to_inbox_post

> <ReplyToInboxPost200Response> reply_to_inbox_post(post_id, reply_to_inbox_post_request)

Reply to comment

Post a reply to a post or specific comment. Requires accountId in request body.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | Zernio post ID or platform-specific post ID. LinkedIn third-party posts accept full activity URN or numeric ID.
reply_to_inbox_post_request = Zernio::ReplyToInboxPostRequest.new({account_id: 'account_id_example', message: 'message_example'}) # ReplyToInboxPostRequest | 

begin
  # Reply to comment
  result = api_instance.reply_to_inbox_post(post_id, reply_to_inbox_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->reply_to_inbox_post: #{e}"
end
```

#### Using the reply_to_inbox_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplyToInboxPost200Response>, Integer, Hash)> reply_to_inbox_post_with_http_info(post_id, reply_to_inbox_post_request)

```ruby
begin
  # Reply to comment
  data, status_code, headers = api_instance.reply_to_inbox_post_with_http_info(post_id, reply_to_inbox_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplyToInboxPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->reply_to_inbox_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID or platform-specific post ID. LinkedIn third-party posts accept full activity URN or numeric ID. |  |
| **reply_to_inbox_post_request** | [**ReplyToInboxPostRequest**](ReplyToInboxPostRequest.md) |  |  |

### Return type

[**ReplyToInboxPost200Response**](ReplyToInboxPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_private_reply_to_comment

> <SendPrivateReplyToComment200Response> send_private_reply_to_comment(post_id, comment_id, send_private_reply_to_comment_request)

Send private reply

Send a private message to the author of a comment. Supported on Instagram and Facebook only. One reply per comment, must be sent within 7 days. Optionally attach interactive elements: `quickReplies` (chips above the keyboard, max 13) or `buttons` (1-3 inline postback/url buttons rendered in the same bubble via Meta's button_template). Buttons are recommended for cold reach since chips do not render in the Instagram Message Requests folder. `quickReplies` and `buttons` are mutually exclusive. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | The media/post ID (Instagram media ID or Facebook post ID)
comment_id = 'comment_id_example' # String | The comment ID to send a private reply to
send_private_reply_to_comment_request = Zernio::SendPrivateReplyToCommentRequest.new({account_id: 'account_id_example', message: 'message_example'}) # SendPrivateReplyToCommentRequest | 

begin
  # Send private reply
  result = api_instance.send_private_reply_to_comment(post_id, comment_id, send_private_reply_to_comment_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->send_private_reply_to_comment: #{e}"
end
```

#### Using the send_private_reply_to_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendPrivateReplyToComment200Response>, Integer, Hash)> send_private_reply_to_comment_with_http_info(post_id, comment_id, send_private_reply_to_comment_request)

```ruby
begin
  # Send private reply
  data, status_code, headers = api_instance.send_private_reply_to_comment_with_http_info(post_id, comment_id, send_private_reply_to_comment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendPrivateReplyToComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->send_private_reply_to_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | The media/post ID (Instagram media ID or Facebook post ID) |  |
| **comment_id** | **String** | The comment ID to send a private reply to |  |
| **send_private_reply_to_comment_request** | [**SendPrivateReplyToCommentRequest**](SendPrivateReplyToCommentRequest.md) |  |  |

### Return type

[**SendPrivateReplyToComment200Response**](SendPrivateReplyToComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_comment_moderation

> <UpdateYoutubeDefaultPlaylist200Response> set_comment_moderation(post_id, comment_id, set_comment_moderation_request)

Set comment moderation status

Set a comment's moderation status. Supported on YouTube only.  Use this to work a moderation queue: approve a held comment (`published`), reject it (`rejected`), or send it back for review (`heldForReview`).  The request must be authorized by the owner of the channel or video the comment belongs to. You cannot moderate comments on videos you do not own.  This is distinct from `POST /v1/inbox/comments/{postId}/{commentId}/hide`, which covers Facebook, Instagram, Threads, and X/Twitter and does not apply to YouTube. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
set_comment_moderation_request = Zernio::SetCommentModerationRequest.new({account_id: 'account_id_example', platform: 'youtube', moderation_status: 'published'}) # SetCommentModerationRequest | 

begin
  # Set comment moderation status
  result = api_instance.set_comment_moderation(post_id, comment_id, set_comment_moderation_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->set_comment_moderation: #{e}"
end
```

#### Using the set_comment_moderation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> set_comment_moderation_with_http_info(post_id, comment_id, set_comment_moderation_request)

```ruby
begin
  # Set comment moderation status
  data, status_code, headers = api_instance.set_comment_moderation_with_http_info(post_id, comment_id, set_comment_moderation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->set_comment_moderation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **set_comment_moderation_request** | [**SetCommentModerationRequest**](SetCommentModerationRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unhide_inbox_comment

> <HideInboxComment200Response> unhide_inbox_comment(post_id, comment_id, account_id)

Unhide comment

Unhide a previously hidden comment. Supported by Facebook, Instagram, Threads, and X/Twitter. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Unhide comment
  result = api_instance.unhide_inbox_comment(post_id, comment_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unhide_inbox_comment: #{e}"
end
```

#### Using the unhide_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HideInboxComment200Response>, Integer, Hash)> unhide_inbox_comment_with_http_info(post_id, comment_id, account_id)

```ruby
begin
  # Unhide comment
  data, status_code, headers = api_instance.unhide_inbox_comment_with_http_info(post_id, comment_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HideInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unhide_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**HideInboxComment200Response**](HideInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlike_inbox_comment

> <UnlikeInboxComment200Response> unlike_inbox_comment(post_id, comment_id, account_id, opts)

Unlike comment

Remove a like from a comment. Supported platforms: Facebook, Twitter/X, Bluesky, Reddit, LinkedIn. For Bluesky, the likeUri query parameter is required. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | 
comment_id = 'comment_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  like_uri: 'like_uri_example' # String | (Bluesky only) The like URI returned when liking
}

begin
  # Unlike comment
  result = api_instance.unlike_inbox_comment(post_id, comment_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unlike_inbox_comment: #{e}"
end
```

#### Using the unlike_inbox_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnlikeInboxComment200Response>, Integer, Hash)> unlike_inbox_comment_with_http_info(post_id, comment_id, account_id, opts)

```ruby
begin
  # Unlike comment
  data, status_code, headers = api_instance.unlike_inbox_comment_with_http_info(post_id, comment_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnlikeInboxComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unlike_inbox_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **comment_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **like_uri** | **String** | (Bluesky only) The like URI returned when liking | [optional] |

### Return type

[**UnlikeInboxComment200Response**](UnlikeInboxComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlike_post

> <UnlikePost200Response> unlike_post(post_id, account_id, opts)

Unlike post

Remove this account's like from a post. Supported platforms: LinkedIn, Twitter/X, Facebook, YouTube, Bluesky. On YouTube this clears the rating. For Bluesky, `likeUri` (returned when the post was liked) is required. Reddit uses `POST /v1/accounts/{accountId}/reddit-vote` with `direction: 0`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommentsApi.new
post_id = 'post_id_example' # String | Zernio post ID or the platform's native post ID
account_id = 'account_id_example' # String | 
opts = {
  like_uri: 'like_uri_example' # String | (Bluesky only) The like URI returned when liking
}

begin
  # Unlike post
  result = api_instance.unlike_post(post_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unlike_post: #{e}"
end
```

#### Using the unlike_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnlikePost200Response>, Integer, Hash)> unlike_post_with_http_info(post_id, account_id, opts)

```ruby
begin
  # Unlike post
  data, status_code, headers = api_instance.unlike_post_with_http_info(post_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnlikePost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommentsApi->unlike_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID or the platform&#39;s native post ID |  |
| **account_id** | **String** |  |  |
| **like_uri** | **String** | (Bluesky only) The like URI returned when liking | [optional] |

### Return type

[**UnlikePost200Response**](UnlikePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

