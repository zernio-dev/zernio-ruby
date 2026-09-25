# Zernio::PostsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_upload_posts**](PostsApi.md#bulk_upload_posts) | **POST** /v1/posts/bulk-upload | Bulk upload from CSV |
| [**create_post**](PostsApi.md#create_post) | **POST** /v1/posts | Create post |
| [**delete_post**](PostsApi.md#delete_post) | **DELETE** /v1/posts/{postId} | Delete post |
| [**edit_post**](PostsApi.md#edit_post) | **POST** /v1/posts/{postId}/edit | Edit published post |
| [**get_post**](PostsApi.md#get_post) | **GET** /v1/posts/{postId} | Get post |
| [**list_posts**](PostsApi.md#list_posts) | **GET** /v1/posts | List posts |
| [**retry_post**](PostsApi.md#retry_post) | **POST** /v1/posts/{postId}/retry | Retry failed post |
| [**unpublish_post**](PostsApi.md#unpublish_post) | **POST** /v1/posts/{postId}/unpublish | Unpublish post |
| [**update_post**](PostsApi.md#update_post) | **PUT** /v1/posts/{postId} | Update post |
| [**update_post_metadata**](PostsApi.md#update_post_metadata) | **POST** /v1/posts/{postId}/update-metadata | Update post metadata |


## bulk_upload_posts

> <BulkUploadResult> bulk_upload_posts(opts)

Bulk upload from CSV

Create multiple posts by uploading a CSV file. Use dryRun=true to validate without creating posts.  CSV columns: - Required: `platforms`, `profiles`, and a schedule (one of `schedule_time`, a `schedule_time_<platform>` override, `publish_now=true`, `use_queue=true`, or `is_draft=true`). - Content: at least one of `post_content`, `title`, or `media_urls` is required. - Aliases: a handful of columns accept the JSON field name from POST /v1/posts, since integrators infer the CSV shape from that endpoint's body. When both are present the real CSV column wins, unless it is blank for that row, in which case the alias value is used.   - `content` aliases `post_content`   - `timezone` aliases `tz`   - `scheduledFor` aliases `schedule_time`   - `mediaUrls` aliases `media_urls` - Per-platform overrides use three dynamic column prefixes, one column per platform (e.g. `schedule_time_instagram`, `custom_content_tiktok`, `custom_media_youtube`): `schedule_time_<platform>`, `custom_content_<platform>`, `custom_media_<platform>`. - Any other column is not read. It does not error, but it is reported in the response's `warnings` array as `unknown_columns:<a,b,c>` (see BulkUploadResult), so a misnamed or unsupported column is never silently dropped. - Row limits: 5000 rows is a hard cap that returns 400 above it. 500 rows is only an advisory threshold, it adds `rows_exceed_advisory_limit:500` to `warnings` and the request still processes.  Example row (header + one data row): ``` post_content,platforms,profiles,schedule_time,tz \"Hello world\",instagram,MyProfile,2026-09-01 10:00,America/New_York ``` 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
opts = {
  dry_run: true, # Boolean | 
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Bulk upload from CSV
  result = api_instance.bulk_upload_posts(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->bulk_upload_posts: #{e}"
end
```

#### Using the bulk_upload_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkUploadResult>, Integer, Hash)> bulk_upload_posts_with_http_info(opts)

```ruby
begin
  # Bulk upload from CSV
  data, status_code, headers = api_instance.bulk_upload_posts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkUploadResult>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->bulk_upload_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** |  | [optional][default to false] |
| **file** | **File** |  | [optional] |

### Return type

[**BulkUploadResult**](BulkUploadResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_post

> <CreatePost200Response> create_post(create_post_request, opts)

Create post

Create a post, and optionally publish it in the same request. A post published immediately (`publishNow: true`) comes back with `platformPostUrl` in the response.  `content` is optional in four cases:  - media is attached - all platforms have `customContent` - every platform entry is an X Article (`platformSpecificData.article`) - every platform entry is a LinkedIn text-free reshare (`platformSpecificData.reshareUrl` with no text)  See each platform's schema for media constraints.  ## Scheduling  Pick one of:  - `scheduledFor`: publish at the scheduled time - `publishNow: true`: publish synchronously, inside this request - `queuedFromProfile`: publish in the profile's next queue slot  With none of them and `isDraft` unset, the post is saved as a draft. `platforms` is required unless the post is a draft.  Precedence: `isDraft: true` wins over `publishNow` and `scheduledFor` (the post is saved, never published), and `publishNow: true` wins over `scheduledFor`. A `scheduledFor` already in the past is not rejected: the post is published synchronously in the same request, exactly like `publishNow`.  ## Idempotency  Three layers of duplicate-protection apply, so safe-to-retry callers (network blips, n8n / Zapier retries, etc.) don't accidentally double-post.  **1. `Idempotency-Key` (recommended for retries, 24-hour window).** Send an `Idempotency-Key` header (a UUID per logical post, up to 255 characters) and reuse it when you retry after a 5xx, a timeout or a dropped connection. A retry with the same key within 24 hours returns **HTTP 200** with the original post in the `post` field, and no new post is created. The match is on the key alone, not on the body: a retry returns the original post even if its body differs (for example a re-uploaded media URL). It covers drafts, and a post that was saved even though the original response was a 5xx or timed out.  If the first request is still being processed, the retry gets **HTTP 409** with `code: idempotency_conflict` and a `Retry-After` header; retry after that delay. If the first request failed without creating a post, the retry is processed as a new request. Keys are scoped to your user. Never reuse a key for a different post: that post would not be created, and the earlier one would be returned instead.  **2. `x-request-id` retry detection (24-hour window).** If a request carries the same `x-request-id` as an earlier one AND collides with it on the content fingerprint below (same account, content and media URLs), we return **HTTP 200** with the original post in the `post` field (or **HTTP 202** with `postId` if the original is still being saved) instead of a 409. A request with the same `x-request-id` but different content is a new post. When both headers are sent, `Idempotency-Key` wins and `x-request-id` is ignored for matching.  The official Zernio SDKs auto-generate a unique `x-request-id` per call. On a generic HTTP client (curl, n8n's HTTP node, Zapier, custom code), either:  - Set a unique `x-request-id` per logical call (UUIDv4 is fine) - Or omit the header, and we'll treat each request as new  **3. Content-hash dedup (24-hour window).** Independently, we hash `(platform, accountId, content + media URLs)` and reject duplicates within 24 hours with **HTTP 409**. This catches genuine \"same content posted twice to the same account\" cases regardless of `x-request-id`. The response carries `error`, `accountId`, `platform`, and `existingPostId` so you can find the original.  To intentionally re-post identical content within 24h, change something (the caption, the media, the account), because the dedup is keyed on the full content fingerprint.  Order: an `Idempotency-Key` match (200) is checked first, then same-`x-request-id` retries (200), then the content-hash dedup (409). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
create_post_request = Zernio::CreatePostRequest.new # CreatePostRequest | 
opts = {
  idempotency_key: 'idempotency_key_example', # String | Optional client-generated key (a UUID per logical post) that makes retries safe. Reuse it on every retry of the same post, especially after a 5xx or a timeout. A retry with the same key within 24 hours returns the original post (HTTP 200) whatever its body; while the original is still being processed it returns 409 `idempotency_conflict` with `Retry-After`. Longer than 255 characters returns 400. Takes precedence over `x-request-id`. See the operation description for the full contract. 
  x_request_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Optional client-generated request identifier. A request with the same value as an earlier one within 24 hours that also matches its content fingerprint (same account, content and media URLs) returns the original post (HTTP 200) instead of a duplicate-content 409. It does not protect a retry whose body differs; use `Idempotency-Key` for that. SDKs set it automatically. See the operation description for the full idempotency contract. 
}

begin
  # Create post
  result = api_instance.create_post(create_post_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->create_post: #{e}"
end
```

#### Using the create_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePost200Response>, Integer, Hash)> create_post_with_http_info(create_post_request, opts)

```ruby
begin
  # Create post
  data, status_code, headers = api_instance.create_post_with_http_info(create_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->create_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_post_request** | [**CreatePostRequest**](CreatePostRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated key (a UUID per logical post) that makes retries safe. Reuse it on every retry of the same post, especially after a 5xx or a timeout. A retry with the same key within 24 hours returns the original post (HTTP 200) whatever its body; while the original is still being processed it returns 409 &#x60;idempotency_conflict&#x60; with &#x60;Retry-After&#x60;. Longer than 255 characters returns 400. Takes precedence over &#x60;x-request-id&#x60;. See the operation description for the full contract.  | [optional] |
| **x_request_id** | **String** | Optional client-generated request identifier. A request with the same value as an earlier one within 24 hours that also matches its content fingerprint (same account, content and media URLs) returns the original post (HTTP 200) instead of a duplicate-content 409. It does not protect a retry whose body differs; use &#x60;Idempotency-Key&#x60; for that. SDKs set it automatically. See the operation description for the full idempotency contract.  | [optional] |

### Return type

[**CreatePost200Response**](CreatePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_post

> <PostDeleteResponse> delete_post(post_id)

Delete post

Delete a post from Zernio. Any status except `published` can be deleted: `draft`, `scheduled`, `publishing`, `failed`, `partial` and `cancelled`. Published posts cannot be deleted; use the Unpublish endpoint instead. Upload quota is automatically refunded for draft and scheduled posts.  Deleting a `publishing` or `partial` post is how you stop entries that are still pending, for example entries held on a disconnected account. It removes the whole post record from Zernio, including the entries that were already published, but it does not remove anything already live on a platform (use Unpublish for that first if needed). An entry that a worker has already started sending when you delete may still go out, or may fail because media uploaded to Zernio and not used by another post is deleted with the post. Analytics for entries already published are removed too. Deleting also frees the content for re-creation, so the same caption and media are no longer reported as a duplicate. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 

begin
  # Delete post
  result = api_instance.delete_post(post_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->delete_post: #{e}"
end
```

#### Using the delete_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDeleteResponse>, Integer, Hash)> delete_post_with_http_info(post_id)

```ruby
begin
  # Delete post
  data, status_code, headers = api_instance.delete_post_with_http_info(post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDeleteResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->delete_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |

### Return type

[**PostDeleteResponse**](PostDeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_post

> <EditPost200Response> edit_post(post_id, edit_post_request)

Edit published post

Edit the text of an already-published post. Supported on X, Discord, Facebook, Reddit, LinkedIn, Telegram, Pinterest, Google Business Profile, YouTube, and Slack. When a post was published to several accounts on the same platform, pass `accountId` to pick which account's copy to edit (the first entry is edited otherwise). Each platform enforces its own rules:  **X** - Connected X account must have an active X Premium subscription - Must be within 1 hour of original publish time - Maximum 5 edits per tweet (enforced by X) - Threads cannot be edited, only single tweets - X assigns a NEW post ID on edit, returned as `id`  **Discord** - No time limit and no premium requirement - The message ID is unchanged after the edit  **Facebook** - Graph only permits editing a post that the same app created, so this works on   posts published through Zernio and is rejected for posts created in Meta   Business Suite / Composer or by another tool - Media cannot be swapped, only the message text - Reactions, comments, and shares are preserved. The post ID is unchanged  **Reddit** - Self-posts only. A link post has no editable body and is rejected before the write - Body only. Reddit exposes no API to edit a post title, ever - The post ID is unchanged  **LinkedIn** - Text only, no time limit. Media, polls, articles, and reshare targets cannot be   changed - Works for member and organization posts published through this API. The post   keeps its ID and LinkedIn shows an \"edited\" marker - Text is limited to 3,000 characters; mentions and hashtags are preserved  **Telegram** - No time limit; messages published through Zernio are editable indefinitely - Text posts: edits the message text (up to 4096 characters) - Media posts: edits the caption only (up to 1024 characters). The media itself   cannot be swapped - For albums, the caption shown on the album (its first message) is edited - The message ID is unchanged  **Pinterest** - Description only, maximum 800 characters. Media, link, and board cannot be   changed, and a pin title derived from the old content's first line at publish   stays as-is - Pinterest's pin-update endpoint is currently in closed beta; until the app is   allowlisted by Pinterest, edits are rejected with a \"beta feature not yet   enabled\" error - The pin ID is unchanged  **Google Business Profile** - Post body (summary) text only. Call-to-action, event/offer fields, and media are   untouched - No time limit and no edit limit. The post ID is unchanged - The post must still exist on Google: a post deleted from the Business Profile   dashboard, or an event/offer post past its end date, returns a 404  **YouTube** - `content` replaces the video description only. The title is unchanged, even if   it was originally derived from the content's first line at publish time - Title, tags, thumbnail, and privacy edits belong to `POST /v1/posts/{postId}/update-metadata` - No time window and no edit cap. The video ID is unchanged  **Slack** - Text only, up to 4,000 characters. Media cannot be swapped, and media posts   whose share message reference never resolved cannot be edited - No time limit unless workspace admins restrict message editing - The message ID is unchanged  Media edits are not supported on any platform. The post record in Zernio is updated with the new content and an edit-history entry. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 
edit_post_request = Zernio::EditPostRequest.new({platform: 'twitter', content: 'content_example'}) # EditPostRequest | 

begin
  # Edit published post
  result = api_instance.edit_post(post_id, edit_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->edit_post: #{e}"
end
```

#### Using the edit_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditPost200Response>, Integer, Hash)> edit_post_with_http_info(post_id, edit_post_request)

```ruby
begin
  # Edit published post
  data, status_code, headers = api_instance.edit_post_with_http_info(post_id, edit_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->edit_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **edit_post_request** | [**EditPostRequest**](EditPostRequest.md) |  |  |

### Return type

[**EditPost200Response**](EditPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_post

> <PostGetResponse> get_post(post_id)

Get post

Fetch a single post by ID. For published posts, this returns platformPostUrl for each platform. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 

begin
  # Get post
  result = api_instance.get_post(post_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->get_post: #{e}"
end
```

#### Using the get_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostGetResponse>, Integer, Hash)> get_post_with_http_info(post_id)

```ruby
begin
  # Get post
  data, status_code, headers = api_instance.get_post_with_http_info(post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostGetResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->get_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |

### Return type

[**PostGetResponse**](PostGetResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_posts

> <PostsListResponse> list_posts(opts)

List posts

Returns a paginated list of posts. Published posts include platformPostUrl with the public URL on each platform. A query parameter that is not listed here returns 400 naming it and the accepted parameters, so a misspelled filter never silently returns the unfiltered list.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | Page size. Values above the maximum return 400 rather than being clamped.
  offset: 56, # Integer | Row offset. Takes precedence over page when both are sent; the response pagination.page is derived from it.
  source: 'zernio', # String | Which collection to read. `zernio` (default) returns posts authored through Zernio. `external` returns posts synced from the platform (existing/historical posts that were published outside Zernio). Combine with `accountId` and paginate via `page`/`limit` to walk the full synced history (we keep up to the last ~12 months per account).
  status: 'draft', # String | 
  platform: 'twitter', # String | 
  profile_id: 'profile_id_example', # String | Filter posts to a specific profile (24-char hex ObjectId). Omit it, or send `all` or an empty value, to list posts across every profile.
  created_by: 'created_by_example', # String | Filter posts to those created by a specific team user (24-char hex ObjectId).
  from_date: Date.parse('2013-10-20'), # Date | Zero-padded YYYY-MM-DD, or a full ISO 8601 datetime. An empty value means no date filter; any other malformed value returns 400. The same name the other date-window filters use (ads, analytics).
  to_date: Date.parse('2013-10-20'), # Date | Zero-padded YYYY-MM-DD, or a full ISO 8601 datetime. An empty value means no date filter; any other malformed value returns 400. The same name the other date-window filters use (ads, analytics).
  date_from: Date.parse('2013-10-20'), # Date | Alias of fromDate, kept for existing callers
  date_to: Date.parse('2013-10-20'), # Date | Alias of toDate, kept for existing callers
  include_hidden: true, # Boolean | 
  search: 'search_example', # String | Search posts by text content.
  sort_by: 'scheduled-desc', # String | Sort order for results.
  account_id: 'account_id_example' # String | Filter posts to those published via a specific account (24-char hex ObjectId).
}

begin
  # List posts
  result = api_instance.list_posts(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->list_posts: #{e}"
end
```

#### Using the list_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostsListResponse>, Integer, Hash)> list_posts_with_http_info(opts)

```ruby
begin
  # List posts
  data, status_code, headers = api_instance.list_posts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostsListResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->list_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** | Page size. Values above the maximum return 400 rather than being clamped. | [optional][default to 10] |
| **offset** | **Integer** | Row offset. Takes precedence over page when both are sent; the response pagination.page is derived from it. | [optional] |
| **source** | **String** | Which collection to read. &#x60;zernio&#x60; (default) returns posts authored through Zernio. &#x60;external&#x60; returns posts synced from the platform (existing/historical posts that were published outside Zernio). Combine with &#x60;accountId&#x60; and paginate via &#x60;page&#x60;/&#x60;limit&#x60; to walk the full synced history (we keep up to the last ~12 months per account). | [optional][default to &#39;zernio&#39;] |
| **status** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **profile_id** | **String** | Filter posts to a specific profile (24-char hex ObjectId). Omit it, or send &#x60;all&#x60; or an empty value, to list posts across every profile. | [optional] |
| **created_by** | **String** | Filter posts to those created by a specific team user (24-char hex ObjectId). | [optional] |
| **from_date** | **Date** | Zero-padded YYYY-MM-DD, or a full ISO 8601 datetime. An empty value means no date filter; any other malformed value returns 400. The same name the other date-window filters use (ads, analytics). | [optional] |
| **to_date** | **Date** | Zero-padded YYYY-MM-DD, or a full ISO 8601 datetime. An empty value means no date filter; any other malformed value returns 400. The same name the other date-window filters use (ads, analytics). | [optional] |
| **date_from** | **Date** | Alias of fromDate, kept for existing callers | [optional] |
| **date_to** | **Date** | Alias of toDate, kept for existing callers | [optional] |
| **include_hidden** | **Boolean** |  | [optional][default to false] |
| **search** | **String** | Search posts by text content. | [optional] |
| **sort_by** | **String** | Sort order for results. | [optional][default to &#39;scheduled-desc&#39;] |
| **account_id** | **String** | Filter posts to those published via a specific account (24-char hex ObjectId). | [optional] |

### Return type

[**PostsListResponse**](PostsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_post

> <PostRetryResponse> retry_post(post_id)

Retry failed post

Immediately retries publishing a failed post. Returns the updated post with its new status.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 

begin
  # Retry failed post
  result = api_instance.retry_post(post_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->retry_post: #{e}"
end
```

#### Using the retry_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostRetryResponse>, Integer, Hash)> retry_post_with_http_info(post_id)

```ruby
begin
  # Retry failed post
  data, status_code, headers = api_instance.retry_post_with_http_info(post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostRetryResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->retry_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |

### Return type

[**PostRetryResponse**](PostRetryResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unpublish_post

> <UnpublishPost200Response> unpublish_post(post_id, unpublish_post_request)

Unpublish post

Deletes a published post from the specified platform. The post record in Zernio is kept but its status is updated to cancelled. Not supported on Instagram, TikTok, or Snapchat. Threaded posts delete all items. YouTube deletion is permanent. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 
unpublish_post_request = Zernio::UnpublishPostRequest.new({platform: 'threads'}) # UnpublishPostRequest | 

begin
  # Unpublish post
  result = api_instance.unpublish_post(post_id, unpublish_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->unpublish_post: #{e}"
end
```

#### Using the unpublish_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> unpublish_post_with_http_info(post_id, unpublish_post_request)

```ruby
begin
  # Unpublish post
  data, status_code, headers = api_instance.unpublish_post_with_http_info(post_id, unpublish_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->unpublish_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **unpublish_post_request** | [**UnpublishPostRequest**](UnpublishPostRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_post

> <PostUpdateResponse> update_post(post_id, update_post_request)

Update post

Update an existing post. Draft, scheduled, failed, partial, and cancelled posts can be edited. Published posts can only have their recycling config updated.  To promote a draft to scheduled, send `isDraft: false` together with `scheduledFor` (or `publishNow: true`, or `queuedFromProfile`). If `isDraft` is omitted the post keeps its current draft status, so sending only `scheduledFor` to a draft returns 200 but the post remains a draft.  Non-draft updates run the same per-platform validation as post creation (media requirements, platform-specific field rules, etc.) against the resulting platforms, returning 400 on failure. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | 
update_post_request = Zernio::UpdatePostRequest.new # UpdatePostRequest | 

begin
  # Update post
  result = api_instance.update_post(post_id, update_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->update_post: #{e}"
end
```

#### Using the update_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostUpdateResponse>, Integer, Hash)> update_post_with_http_info(post_id, update_post_request)

```ruby
begin
  # Update post
  data, status_code, headers = api_instance.update_post_with_http_info(post_id, update_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostUpdateResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->update_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  |  |
| **update_post_request** | [**UpdatePostRequest**](UpdatePostRequest.md) |  |  |

### Return type

[**PostUpdateResponse**](PostUpdateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_post_metadata

> <UpdatePostMetadata200Response> update_post_metadata(post_id, update_post_metadata_request)

Update post metadata

Updates metadata of a published video on the specified platform without re-uploading. Currently only supported for YouTube. At least one updatable field is required.  Two modes:  1. Post-based (video published through Zernio): pass the Zernio postId in the URL and platform in the body. 2. Direct video ID (video uploaded outside Zernio, e.g. directly to YouTube): use _ as the postId,    and pass videoId + accountId + platform in the body. The accountId is the Zernio account ID    for the connected YouTube channel. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PostsApi.new
post_id = 'post_id_example' # String | Zernio post ID, or \"_\" when using direct video ID mode
update_post_metadata_request = Zernio::UpdatePostMetadataRequest.new({platform: 'youtube'}) # UpdatePostMetadataRequest | 

begin
  # Update post metadata
  result = api_instance.update_post_metadata(post_id, update_post_metadata_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->update_post_metadata: #{e}"
end
```

#### Using the update_post_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePostMetadata200Response>, Integer, Hash)> update_post_metadata_with_http_info(post_id, update_post_metadata_request)

```ruby
begin
  # Update post metadata
  data, status_code, headers = api_instance.update_post_metadata_with_http_info(post_id, update_post_metadata_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePostMetadata200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->update_post_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID, or \&quot;_\&quot; when using direct video ID mode |  |
| **update_post_metadata_request** | [**UpdatePostMetadataRequest**](UpdatePostMetadataRequest.md) |  |  |

### Return type

[**UpdatePostMetadata200Response**](UpdatePostMetadata200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

