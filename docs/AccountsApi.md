# Zernio::AccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{accountId} | Disconnect account |
| [**get_account_health**](AccountsApi.md#get_account_health) | **GET** /v1/accounts/{accountId}/health | Check account health |
| [**get_account_posts**](AccountsApi.md#get_account_posts) | **GET** /v1/accounts/{accountId}/posts | List posts published on the platform |
| [**get_all_accounts_health**](AccountsApi.md#get_all_accounts_health) | **GET** /v1/accounts/health | Check accounts health |
| [**get_bluesky_settings**](AccountsApi.md#get_bluesky_settings) | **GET** /v1/accounts/{accountId}/bluesky-settings | Get Bluesky account settings |
| [**get_follower_stats**](AccountsApi.md#get_follower_stats) | **GET** /v1/accounts/follower-stats | Get follower stats |
| [**get_instagram_follow_status**](AccountsApi.md#get_instagram_follow_status) | **GET** /v1/accounts/{accountId}/follow-status/{userId} | Check whether an Instagram user follows the account |
| [**get_slack_settings**](AccountsApi.md#get_slack_settings) | **GET** /v1/accounts/{accountId}/slack-settings | Get Slack account settings |
| [**get_tik_tok_creator_info**](AccountsApi.md#get_tik_tok_creator_info) | **GET** /v1/accounts/{accountId}/tiktok/creator-info | Get TikTok creator info |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /v1/accounts | List accounts |
| [**move_account_to_profile**](AccountsApi.md#move_account_to_profile) | **PATCH** /v1/accounts/{accountId} | Move account to another profile |
| [**update_account**](AccountsApi.md#update_account) | **PUT** /v1/accounts/{accountId} | Update account |
| [**update_bluesky_settings**](AccountsApi.md#update_bluesky_settings) | **PATCH** /v1/accounts/{accountId}/bluesky-settings | Update Bluesky account settings |
| [**update_slack_settings**](AccountsApi.md#update_slack_settings) | **PATCH** /v1/accounts/{accountId}/slack-settings | Update Slack account settings |


## delete_account

> <DeleteAccountGroup200Response> delete_account(account_id)

Disconnect account

Disconnects and removes a connected social account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Disconnect account
  result = api_instance.delete_account(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAccountGroup200Response>, Integer, Hash)> delete_account_with_http_info(account_id)

```ruby
begin
  # Disconnect account
  data, status_code, headers = api_instance.delete_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAccountGroup200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**DeleteAccountGroup200Response**](DeleteAccountGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_health

> <GetAccountHealth200Response> get_account_health(account_id)

Check account health

Returns detailed health info for a specific account including token status, permissions, and recommendations.  For WhatsApp accounts the response also includes `platformConnection`, a live probe of the Meta link behind the channel (the same read as `GET /v1/whatsapp/number-info`). The OAuth token can be perfectly valid while Meta refuses to serve the phone-number object (for example after a phone-side coexistence disconnect), so `tokenStatus` alone is not a liveness signal for WhatsApp. When the Meta link is dead, `platformConnection.status` is `disconnected` and the overall `status` is `error`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | The account ID to check

begin
  # Check account health
  result = api_instance.get_account_health(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_health: #{e}"
end
```

#### Using the get_account_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountHealth200Response>, Integer, Hash)> get_account_health_with_http_info(account_id)

```ruby
begin
  # Check account health
  data, status_code, headers = api_instance.get_account_health_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountHealth200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_health_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account ID to check |  |

### Return type

[**GetAccountHealth200Response**](GetAccountHealth200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_posts

> <GetAccountPosts200Response> get_account_posts(account_id)

List posts published on the platform

Returns the 25 most recent posts that exist on the platform for a connected account, read live from the platform API. This covers everything on the account, including posts that were never created through Zernio.  Use it to obtain the platform's own post id, which the analytics endpoints take as input. On YouTube the returned `id` is the video ID that `GET /v1/analytics/youtube/daily-views`, `/video-retention` and `/demographics` expect as `videoId`, so this endpoint is what backs a video picker in your own UI.  Not every field applies to every platform: `reactionCount` is Facebook and LinkedIn, `shareCount` is platform dependent, `cid` is the Bluesky content id needed to reply, and `subreddit` is Reddit only. Absent fields are omitted from the response.  The account's token is refreshed before the call when it has expired. When the refresh cannot recover it, the response is a 401 with code `TOKEN_EXPIRED` and the account has to be reconnected. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # List posts published on the platform
  result = api_instance.get_account_posts(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_posts: #{e}"
end
```

#### Using the get_account_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountPosts200Response>, Integer, Hash)> get_account_posts_with_http_info(account_id)

```ruby
begin
  # List posts published on the platform
  data, status_code, headers = api_instance.get_account_posts_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountPosts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetAccountPosts200Response**](GetAccountPosts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_accounts_health

> <GetAllAccountsHealth200Response> get_all_accounts_health(opts)

Check accounts health

Returns health status of all connected accounts including token validity, permissions, and issues needing attention.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter by profile ID
  platform: 'facebook', # String | Filter by platform
  status: 'healthy' # String | Filter by health status
}

begin
  # Check accounts health
  result = api_instance.get_all_accounts_health(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_all_accounts_health: #{e}"
end
```

#### Using the get_all_accounts_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllAccountsHealth200Response>, Integer, Hash)> get_all_accounts_health_with_http_info(opts)

```ruby
begin
  # Check accounts health
  data, status_code, headers = api_instance.get_all_accounts_health_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllAccountsHealth200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_all_accounts_health_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **platform** | **String** | Filter by platform | [optional] |
| **status** | **String** | Filter by health status | [optional] |

### Return type

[**GetAllAccountsHealth200Response**](GetAllAccountsHealth200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bluesky_settings

> <GetBlueskySettings200Response> get_bluesky_settings(account_id)

Get Bluesky account settings

Returns the account's default post languages (defaultLangs), applied at publish time whenever a post's platformSpecificData.langs is absent. Null when no default is set.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get Bluesky account settings
  result = api_instance.get_bluesky_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_bluesky_settings: #{e}"
end
```

#### Using the get_bluesky_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlueskySettings200Response>, Integer, Hash)> get_bluesky_settings_with_http_info(account_id)

```ruby
begin
  # Get Bluesky account settings
  data, status_code, headers = api_instance.get_bluesky_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlueskySettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_bluesky_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetBlueskySettings200Response**](GetBlueskySettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_follower_stats

> <FollowerStatsResponse> get_follower_stats(opts)

Get follower stats

Returns follower count history and growth metrics for connected social accounts. Requires analytics add-on subscription. Follower counts are refreshed once per day. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
opts = {
  account_ids: 'account_ids_example', # String | Comma-separated list of account IDs (optional, defaults to all user's accounts)
  profile_id: 'profile_id_example', # String | Filter by profile ID
  from_date: Date.parse('2013-10-20'), # Date | Start date in YYYY-MM-DD format (defaults to 30 days ago)
  to_date: Date.parse('2013-10-20'), # Date | End date in YYYY-MM-DD format (defaults to today)
  granularity: 'daily' # String | Data aggregation level
}

begin
  # Get follower stats
  result = api_instance.get_follower_stats(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_follower_stats: #{e}"
end
```

#### Using the get_follower_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FollowerStatsResponse>, Integer, Hash)> get_follower_stats_with_http_info(opts)

```ruby
begin
  # Get follower stats
  data, status_code, headers = api_instance.get_follower_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FollowerStatsResponse>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_follower_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_ids** | **String** | Comma-separated list of account IDs (optional, defaults to all user&#39;s accounts) | [optional] |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **from_date** | **Date** | Start date in YYYY-MM-DD format (defaults to 30 days ago) | [optional] |
| **to_date** | **Date** | End date in YYYY-MM-DD format (defaults to today) | [optional] |
| **granularity** | **String** | Data aggregation level | [optional][default to &#39;daily&#39;] |

### Return type

[**FollowerStatsResponse**](FollowerStatsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_follow_status

> <GetInstagramFollowStatus200Response> get_instagram_follow_status(account_id, user_id, opts)

Check whether an Instagram user follows the account

Resolves the follow relationship between an Instagram user and the connected account, plus their public profile counters.  `userId` is the Instagram-scoped id (IGSID) Meta gives you on a webhook: `sender.id` on `message.received`, `comment.author.id` on `comment.received`.  **Meta only answers for people who have MESSAGED the account.** Commenting grants no consent, so a commenter who has never DMed you is unresolvable - that is a platform rule, not a limitation of this endpoint. When it cannot be resolved the response is still `200` with `isFollower: null` and an `unavailableReason`, because \"unknown\" is a normal state to branch on:    * `consent_required` - the user has never messaged this account.   * `dm_access_disabled` - the account owner turned off Instagram Direct API access.   * `not_messageable` - the id is not a messaging-scoped id.   * `error` - a transient Graph API failure.  To gate a comment automation on this, use the automation's `audience` rules instead of calling this per comment - they run the same lookup only on comments that actually match a keyword, and can ask the commenter to confirm with one tap.  Answers are cached briefly per (account, user). Pass `refresh=true` right after asking someone to follow, so a follow from a moment ago is visible. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | Instagram account ID
user_id = 'user_id_example' # String | Instagram-scoped user id (IGSID) from a webhook payload
opts = {
  refresh: true # Boolean | Bypass the cache and re-query Meta
}

begin
  # Check whether an Instagram user follows the account
  result = api_instance.get_instagram_follow_status(account_id, user_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_instagram_follow_status: #{e}"
end
```

#### Using the get_instagram_follow_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInstagramFollowStatus200Response>, Integer, Hash)> get_instagram_follow_status_with_http_info(account_id, user_id, opts)

```ruby
begin
  # Check whether an Instagram user follows the account
  data, status_code, headers = api_instance.get_instagram_follow_status_with_http_info(account_id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInstagramFollowStatus200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_instagram_follow_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Instagram account ID |  |
| **user_id** | **String** | Instagram-scoped user id (IGSID) from a webhook payload |  |
| **refresh** | **Boolean** | Bypass the cache and re-query Meta | [optional] |

### Return type

[**GetInstagramFollowStatus200Response**](GetInstagramFollowStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slack_settings

> <GetSlackSettings200Response> get_slack_settings(account_id)

Get Slack account settings

Returns the connected Slack channel details and the default message identity (name and avatar shown as the author on every post, with Slack's APP badge). The identity applies to messages only; the app's own Slack profile is global and cannot be changed per workspace.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get Slack account settings
  result = api_instance.get_slack_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_slack_settings: #{e}"
end
```

#### Using the get_slack_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSlackSettings200Response>, Integer, Hash)> get_slack_settings_with_http_info(account_id)

```ruby
begin
  # Get Slack account settings
  data, status_code, headers = api_instance.get_slack_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSlackSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_slack_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetSlackSettings200Response**](GetSlackSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tik_tok_creator_info

> <GetTikTokCreatorInfo200Response> get_tik_tok_creator_info(account_id, opts)

Get TikTok creator info

Returns TikTok creator details, available privacy levels, posting limits, and commercial content options for a specific TikTok account. Only works with TikTok accounts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | The TikTok account ID
opts = {
  media_type: 'video' # String | The media type to get creator info for (affects available interaction settings)
}

begin
  # Get TikTok creator info
  result = api_instance.get_tik_tok_creator_info(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_tik_tok_creator_info: #{e}"
end
```

#### Using the get_tik_tok_creator_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTikTokCreatorInfo200Response>, Integer, Hash)> get_tik_tok_creator_info_with_http_info(account_id, opts)

```ruby
begin
  # Get TikTok creator info
  data, status_code, headers = api_instance.get_tik_tok_creator_info_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTikTokCreatorInfo200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_tik_tok_creator_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The TikTok account ID |  |
| **media_type** | **String** | The media type to get creator info for (affects available interaction settings) | [optional][default to &#39;video&#39;] |

### Return type

[**GetTikTokCreatorInfo200Response**](GetTikTokCreatorInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <AccountsListResponse> list_accounts(opts)

List accounts

Returns connected social accounts. Only includes accounts within the plan limit by default. Follower data requires analytics add-on. Supports optional server-side pagination via page/limit params. When omitted, returns all accounts (backward-compatible). page and limit must be supplied together; out-of-range page/limit values are rejected with 400 rather than silently clamped. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter accounts by profile ID. Must be a valid ObjectId.
  platform: 'platform_example', # String | Filter accounts by platform (e.g. \"instagram\", \"twitter\").
  status: 'connected', # String | Filter accounts by connection status. `connected` returns healthy accounts; `disconnected` returns accounts that need reconnection (per the same reconnection check surfaced in the dashboard). Omit to return accounts in any status. When combined with page/limit, pagination totals reflect the filtered result set. 
  include_over_limit: true, # Boolean | When true, includes accounts from over-limit profiles.
  page: 56, # Integer | Page number (1-based). Must be provided together with limit to enable server-side pagination; sending only one of the two returns 400. Omit both for all accounts. 
  limit: 56 # Integer | Page size. Must be provided together with page; sending only one of the two returns 400. 
}

begin
  # List accounts
  result = api_instance.list_accounts(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_accounts: #{e}"
end
```

#### Using the list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountsListResponse>, Integer, Hash)> list_accounts_with_http_info(opts)

```ruby
begin
  # List accounts
  data, status_code, headers = api_instance.list_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountsListResponse>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter accounts by profile ID. Must be a valid ObjectId. | [optional] |
| **platform** | **String** | Filter accounts by platform (e.g. \&quot;instagram\&quot;, \&quot;twitter\&quot;). | [optional] |
| **status** | **String** | Filter accounts by connection status. &#x60;connected&#x60; returns healthy accounts; &#x60;disconnected&#x60; returns accounts that need reconnection (per the same reconnection check surfaced in the dashboard). Omit to return accounts in any status. When combined with page/limit, pagination totals reflect the filtered result set.  | [optional] |
| **include_over_limit** | **Boolean** | When true, includes accounts from over-limit profiles. | [optional][default to false] |
| **page** | **Integer** | Page number (1-based). Must be provided together with limit to enable server-side pagination; sending only one of the two returns 400. Omit both for all accounts.  | [optional] |
| **limit** | **Integer** | Page size. Must be provided together with page; sending only one of the two returns 400.  | [optional] |

### Return type

[**AccountsListResponse**](AccountsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_account_to_profile

> <MoveAccountToProfile200Response> move_account_to_profile(account_id, move_account_to_profile_request)

Move account to another profile

Moves a connected social account to a different profile owned by the same user. The target profile must belong to the same user as the account.  For API keys restricted to specific profiles, BOTH the source account's current profile AND the target profile must be in the key's allowed set. Calls with a target profile outside the key's scope return 403. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 
move_account_to_profile_request = Zernio::MoveAccountToProfileRequest.new({profile_id: 'profile_id_example'}) # MoveAccountToProfileRequest | 

begin
  # Move account to another profile
  result = api_instance.move_account_to_profile(account_id, move_account_to_profile_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->move_account_to_profile: #{e}"
end
```

#### Using the move_account_to_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MoveAccountToProfile200Response>, Integer, Hash)> move_account_to_profile_with_http_info(account_id, move_account_to_profile_request)

```ruby
begin
  # Move account to another profile
  data, status_code, headers = api_instance.move_account_to_profile_with_http_info(account_id, move_account_to_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MoveAccountToProfile200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->move_account_to_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **move_account_to_profile_request** | [**MoveAccountToProfileRequest**](MoveAccountToProfileRequest.md) |  |  |

### Return type

[**MoveAccountToProfile200Response**](MoveAccountToProfile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account

> <UpdateAccount200Response> update_account(account_id, update_account_request)

Update account

Updates a connected social account's display name or username override.  For X/Twitter accounts on usage-based billing, also accepts an `xCapabilities` object to toggle background API operations that incur X API pass-through costs. Both fields are opt-in (default `false`) — when off, no analytics syncs or DM polling are performed for that account, and no API call is metered for those operations. Publishing and deleting posts are always available regardless of these toggles. Setting `xCapabilities` on a non-X account returns 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 
update_account_request = Zernio::UpdateAccountRequest.new # UpdateAccountRequest | 

begin
  # Update account
  result = api_instance.update_account(account_id, update_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAccount200Response>, Integer, Hash)> update_account_with_http_info(account_id, update_account_request)

```ruby
begin
  # Update account
  data, status_code, headers = api_instance.update_account_with_http_info(account_id, update_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAccount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_account_request** | [**UpdateAccountRequest**](UpdateAccountRequest.md) |  |  |

### Return type

[**UpdateAccount200Response**](UpdateAccount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bluesky_settings

> update_bluesky_settings(account_id, update_bluesky_settings_request)

Update Bluesky account settings

Set or clear the account's default post languages. 1-3 BCP-47 codes (e.g. \"pt\", \"en-US\"), the same validation as per-post langs; explicit null clears the default. Per-post platformSpecificData.langs always overrides this default. Applies to posts published after the change; already-published posts cannot be retagged (Bluesky has no post edit).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 
update_bluesky_settings_request = Zernio::UpdateBlueskySettingsRequest.new({default_langs: ["pt"]}) # UpdateBlueskySettingsRequest | 

begin
  # Update Bluesky account settings
  api_instance.update_bluesky_settings(account_id, update_bluesky_settings_request)
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_bluesky_settings: #{e}"
end
```

#### Using the update_bluesky_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_bluesky_settings_with_http_info(account_id, update_bluesky_settings_request)

```ruby
begin
  # Update Bluesky account settings
  data, status_code, headers = api_instance.update_bluesky_settings_with_http_info(account_id, update_bluesky_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_bluesky_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_bluesky_settings_request** | [**UpdateBlueskySettingsRequest**](UpdateBlueskySettingsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_slack_settings

> update_slack_settings(account_id, update_slack_settings_request)

Update Slack account settings

Set or clear the default message identity for this channel. Empty string clears a field; per-post platformSpecificData.username/iconUrl still override these defaults.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountsApi.new
account_id = 'account_id_example' # String | 
update_slack_settings_request = Zernio::UpdateSlackSettingsRequest.new # UpdateSlackSettingsRequest | 

begin
  # Update Slack account settings
  api_instance.update_slack_settings(account_id, update_slack_settings_request)
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_slack_settings: #{e}"
end
```

#### Using the update_slack_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_slack_settings_with_http_info(account_id, update_slack_settings_request)

```ruby
begin
  # Update Slack account settings
  data, status_code, headers = api_instance.update_slack_settings_with_http_info(account_id, update_slack_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_slack_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_slack_settings_request** | [**UpdateSlackSettingsRequest**](UpdateSlackSettingsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

