# Zernio::AccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{accountId} | Disconnect account |
| [**get_account_health**](AccountsApi.md#get_account_health) | **GET** /v1/accounts/{accountId}/health | Check account health |
| [**get_all_accounts_health**](AccountsApi.md#get_all_accounts_health) | **GET** /v1/accounts/health | Check accounts health |
| [**get_follower_stats**](AccountsApi.md#get_follower_stats) | **GET** /v1/accounts/follower-stats | Get follower stats |
| [**get_tik_tok_creator_info**](AccountsApi.md#get_tik_tok_creator_info) | **GET** /v1/accounts/{accountId}/tiktok/creator-info | Get TikTok creator info |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /v1/accounts | List accounts |
| [**move_account_to_profile**](AccountsApi.md#move_account_to_profile) | **PATCH** /v1/accounts/{accountId} | Move account to a different profile |
| [**update_account**](AccountsApi.md#update_account) | **PUT** /v1/accounts/{accountId} | Update account |


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

Returns detailed health info for a specific account including token status, permissions, and recommendations.

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

Returns connected social accounts. Only includes accounts within the plan limit by default. Follower data requires analytics add-on. Supports optional server-side pagination via page/limit params. When omitted, returns all accounts (backward-compatible). 

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
  profile_id: 'profile_id_example', # String | Filter accounts by profile ID
  platform: 'platform_example', # String | Filter accounts by platform (e.g. \"instagram\", \"twitter\").
  status: 'connected', # String | Filter accounts by connection status. `connected` returns healthy accounts; `disconnected` returns accounts that need reconnection (per the same reconnection check surfaced in the dashboard). Omit to return accounts in any status. When combined with page/limit, pagination totals reflect the filtered result set. 
  include_over_limit: true, # Boolean | When true, includes accounts from over-limit profiles.
  page: 56, # Integer | Page number (1-based). When provided with limit, enables server-side pagination. Omit for all accounts.
  limit: 56 # Integer | Page size. Required alongside page for pagination.
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
| **profile_id** | **String** | Filter accounts by profile ID | [optional] |
| **platform** | **String** | Filter accounts by platform (e.g. \&quot;instagram\&quot;, \&quot;twitter\&quot;). | [optional] |
| **status** | **String** | Filter accounts by connection status. &#x60;connected&#x60; returns healthy accounts; &#x60;disconnected&#x60; returns accounts that need reconnection (per the same reconnection check surfaced in the dashboard). Omit to return accounts in any status. When combined with page/limit, pagination totals reflect the filtered result set.  | [optional] |
| **include_over_limit** | **Boolean** | When true, includes accounts from over-limit profiles. | [optional][default to false] |
| **page** | **Integer** | Page number (1-based). When provided with limit, enables server-side pagination. Omit for all accounts. | [optional] |
| **limit** | **Integer** | Page size. Required alongside page for pagination. | [optional] |

### Return type

[**AccountsListResponse**](AccountsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_account_to_profile

> <MoveAccountToProfile200Response> move_account_to_profile(account_id, move_account_to_profile_request)

Move account to a different profile

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
  # Move account to a different profile
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
  # Move account to a different profile
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

