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

Create multiple posts by uploading a CSV file. Use dryRun=true to validate without creating posts.

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

> <PostCreateResponse> create_post(create_post_request, opts)

Create post

Create and optionally publish a post. Immediate posts (`publishNow: true`) include `platformPostUrl` in the response. Content is optional when media is attached or all platforms have `customContent`. See each platform's schema for media constraints.  ## Idempotency  Two layers of duplicate-protection apply, so safe-to-retry callers (network blips, n8n / Zapier retries, etc.) don't accidentally double-post.  **1. Same-request idempotency (5-minute window).** Pass an `x-request-id` header to mark a logical request. If a second request arrives with the same `x-request-id` while the first is in-flight (or within ~5 minutes of completion), we return **HTTP 200** with the original post in the `existingPost` field — no new post is created. The official Zernio SDKs auto-generate a unique `x-request-id` per call. If you're using a generic HTTP client (curl, n8n's HTTP node, Zapier, custom code), either: - Set a unique `x-request-id` per logical call (recommended — UUIDv4 is fine) - Or simply omit the header — we'll treat each request as new  **Common pitfall**: if your workflow tool uses a single execution-level request ID and reuses it across multiple HTTP nodes (e.g. one ID for the whole run, shared across 6 different platform calls), every call after the first will look like a retry of the first and return its post. Generate a fresh ID per node.  **2. Content-hash dedup (24-hour window).** Independently, we hash `(platform, accountId, content + media URLs)` and reject duplicates within 24 hours with **HTTP 409**. This catches genuine \"same content posted twice to the same account\" cases regardless of `x-request-id`. Returns `error`, `accountId`, `platform`, and `existingPostId` so you can find the original. To intentionally re-post identical content within 24h, change something (the caption, the media, the account) — the dedup is keyed on the full content fingerprint.  Order: same-`x-request-id` retries (200) are checked first; if no idempotency match, the content-hash dedup (409) runs. 

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
  x_request_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Optional client-generated request identifier for safe retry (idempotency). When two requests carry the same value, the second is treated as a retry of the first and returns the original post (HTTP 200) instead of creating a duplicate. Window is ~5 minutes from the first request. Generate a UUID per logical call. SDKs do this automatically; HTTP clients should set it themselves or omit it. See the operation description for the full idempotency contract. 
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

> <Array(<PostCreateResponse>, Integer, Hash)> create_post_with_http_info(create_post_request, opts)

```ruby
begin
  # Create post
  data, status_code, headers = api_instance.create_post_with_http_info(create_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCreateResponse>
rescue Zernio::ApiError => e
  puts "Error when calling PostsApi->create_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_post_request** | [**CreatePostRequest**](CreatePostRequest.md) |  |  |
| **x_request_id** | **String** | Optional client-generated request identifier for safe retry (idempotency). When two requests carry the same value, the second is treated as a retry of the first and returns the original post (HTTP 200) instead of creating a duplicate. Window is ~5 minutes from the first request. Generate a UUID per logical call. SDKs do this automatically; HTTP clients should set it themselves or omit it. See the operation description for the full idempotency contract.  | [optional] |

### Return type

[**PostCreateResponse**](PostCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_post

> <PostDeleteResponse> delete_post(post_id)

Delete post

Delete a draft or scheduled post from Zernio. Published posts cannot be deleted; use the Unpublish endpoint instead. Upload quota is automatically refunded.

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

Edit the text of an already-published post. Supported on X (Twitter), Discord, Facebook, and Reddit. Each platform enforces its own rules:  **X (Twitter)** - Connected X account must have an active X Premium subscription - Must be within 1 hour of original publish time - Maximum 5 edits per tweet (enforced by X) - Threads cannot be edited, only single tweets - X assigns a NEW post ID on edit, returned as `id`  **Discord** - No time limit and no premium requirement - The message ID is unchanged after the edit  **Facebook** - Graph only permits editing a post that the same app created, so this works on   posts published through Zernio and is rejected for posts created in Meta   Business Suite / Composer or by another tool - Media cannot be swapped, only the message text - Reactions, comments, and shares are preserved. The post ID is unchanged  **Reddit** - Self-posts only. A link post has no editable body and is rejected before the write - Body only. Reddit exposes no API to edit a post title, ever - The post ID is unchanged  Media edits are not supported on any platform. The post record in Zernio is updated with the new content and an edit-history entry. 

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

Returns a paginated list of posts. Published posts include platformPostUrl with the public URL on each platform.

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
  limit: 56, # Integer | Page size
  source: 'zernio', # String | Which collection to read. `zernio` (default) returns posts authored through Zernio. `external` returns posts synced from the platform (existing/historical posts that were published outside Zernio). Combine with `accountId` and paginate via `page`/`limit` to walk the full synced history (we keep up to the last ~12 months per account).
  status: 'draft', # String | 
  platform: 'twitter', # String | 
  profile_id: 'profile_id_example', # String | 
  created_by: 'created_by_example', # String | 
  date_from: Date.parse('2013-10-20'), # Date | 
  date_to: Date.parse('2013-10-20'), # Date | 
  include_hidden: true, # Boolean | 
  search: 'search_example', # String | Search posts by text content.
  sort_by: 'scheduled-desc', # String | Sort order for results.
  account_id: 'account_id_example' # String | Filter posts to those published via a specific social account (24-char hex ObjectId).
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
| **limit** | **Integer** | Page size | [optional][default to 10] |
| **source** | **String** | Which collection to read. &#x60;zernio&#x60; (default) returns posts authored through Zernio. &#x60;external&#x60; returns posts synced from the platform (existing/historical posts that were published outside Zernio). Combine with &#x60;accountId&#x60; and paginate via &#x60;page&#x60;/&#x60;limit&#x60; to walk the full synced history (we keep up to the last ~12 months per account). | [optional][default to &#39;zernio&#39;] |
| **status** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **date_from** | **Date** |  | [optional] |
| **date_to** | **Date** |  | [optional] |
| **include_hidden** | **Boolean** |  | [optional][default to false] |
| **search** | **String** | Search posts by text content. | [optional] |
| **sort_by** | **String** | Sort order for results. | [optional][default to &#39;scheduled-desc&#39;] |
| **account_id** | **String** | Filter posts to those published via a specific social account (24-char hex ObjectId). | [optional] |

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

Update an existing post. Draft, scheduled, failed, partial, and cancelled posts can be edited. Published posts can only have their recycling config updated.  To promote a draft to scheduled, send `isDraft: false` together with `scheduledFor` (or `publishNow: true`, or `queuedFromProfile`). If `isDraft` is omitted the post keeps its current draft status, so sending only `scheduledFor` to a draft returns 200 but the post remains a draft. 

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

Updates metadata of a published video on the specified platform without re-uploading. Currently only supported for YouTube. At least one updatable field is required.  Two modes:  1. Post-based (video published through Zernio): pass the Zernio postId in the URL and platform in the body. 2. Direct video ID (video uploaded outside Zernio, e.g. directly to YouTube): use _ as the postId,    and pass videoId + accountId + platform in the body. The accountId is the Zernio social account ID    for the connected YouTube channel. 

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

