# Zernio::AccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{accountId} | Disconnect account |
| [**get_account**](AccountsApi.md#get_account) | **GET** /v1/accounts/{accountId} | Get account |
| [**get_account_health**](AccountsApi.md#get_account_health) | **GET** /v1/accounts/{accountId}/health | Check account health |
| [**get_account_posts**](AccountsApi.md#get_account_posts) | **GET** /v1/accounts/{accountId}/posts | List posts published on the platform |
| [**get_all_accounts_health**](AccountsApi.md#get_all_accounts_health) | **GET** /v1/accounts/health | Check accounts health |
| [**get_bluesky_settings**](AccountsApi.md#get_bluesky_settings) | **GET** /v1/accounts/{accountId}/bluesky-settings | Get Bluesky account settings |
| [**get_follower_stats**](AccountsApi.md#get_follower_stats) | **GET** /v1/accounts/follower-stats | Get follower stats |
| [**get_gohighlevel_funnel_tracking**](AccountsApi.md#get_gohighlevel_funnel_tracking) | **GET** /v1/accounts/{accountId}/gohighlevel-funnel-tracking | Get HighLevel funnel tracking |
| [**get_gohighlevel_settings**](AccountsApi.md#get_gohighlevel_settings) | **GET** /v1/accounts/{accountId}/gohighlevel-settings | Get HighLevel account settings |
| [**get_hub_spot_settings**](AccountsApi.md#get_hub_spot_settings) | **GET** /v1/accounts/{accountId}/hubspot-settings | Get HubSpot account settings |
| [**get_instagram_follow_status**](AccountsApi.md#get_instagram_follow_status) | **GET** /v1/accounts/{accountId}/follow-status/{userId} | Check whether an Instagram user follows the account |
| [**get_salesforce_settings**](AccountsApi.md#get_salesforce_settings) | **GET** /v1/accounts/{accountId}/salesforce-settings | Get Salesforce account settings |
| [**get_slack_settings**](AccountsApi.md#get_slack_settings) | **GET** /v1/accounts/{accountId}/slack-settings | Get Slack account settings |
| [**get_stripe_settings**](AccountsApi.md#get_stripe_settings) | **GET** /v1/accounts/{accountId}/stripe-settings | Get Stripe account settings |
| [**get_tik_tok_creator_info**](AccountsApi.md#get_tik_tok_creator_info) | **GET** /v1/accounts/{accountId}/tiktok/creator-info | Get TikTok creator info |
| [**grant_business_partner**](AccountsApi.md#grant_business_partner) | **POST** /v1/accounts/{accountId}/business-partners | Share the Page with a partner business |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /v1/accounts | List accounts |
| [**list_business_partners**](AccountsApi.md#list_business_partners) | **GET** /v1/accounts/{accountId}/business-partners | List partner businesses of the Page |
| [**list_gohighlevel_audience_syncs**](AccountsApi.md#list_gohighlevel_audience_syncs) | **GET** /v1/accounts/{accountId}/gohighlevel-audiences | List HighLevel tag audience syncs |
| [**list_hub_spot_contact_properties**](AccountsApi.md#list_hub_spot_contact_properties) | **GET** /v1/accounts/{accountId}/hubspot-settings/contact-properties | List HubSpot contact properties |
| [**list_tik_tok_commercial_music**](AccountsApi.md#list_tik_tok_commercial_music) | **GET** /v1/accounts/{accountId}/tiktok/commercial-music | List trending commercial music |
| [**move_account_to_profile**](AccountsApi.md#move_account_to_profile) | **PATCH** /v1/accounts/{accountId} | Move account to another profile |
| [**revoke_business_partner**](AccountsApi.md#revoke_business_partner) | **DELETE** /v1/accounts/{accountId}/business-partners | Revoke a partner business from the Page |
| [**search_tik_tok_locations**](AccountsApi.md#search_tik_tok_locations) | **GET** /v1/accounts/{accountId}/tiktok/locations | Search TikTok location tags |
| [**send_gohighlevel_past_won_deals**](AccountsApi.md#send_gohighlevel_past_won_deals) | **POST** /v1/accounts/{accountId}/gohighlevel-won-deals-backfill | Send past HighLevel won deals as conversions |
| [**start_gohighlevel_audience_sync**](AccountsApi.md#start_gohighlevel_audience_sync) | **POST** /v1/accounts/{accountId}/gohighlevel-audiences | Sync a HighLevel tag to ad audiences |
| [**stop_gohighlevel_audience_sync**](AccountsApi.md#stop_gohighlevel_audience_sync) | **DELETE** /v1/accounts/{accountId}/gohighlevel-audiences/{syncId} | Stop a HighLevel tag audience sync |
| [**update_account**](AccountsApi.md#update_account) | **PUT** /v1/accounts/{accountId} | Update account |
| [**update_bluesky_settings**](AccountsApi.md#update_bluesky_settings) | **PATCH** /v1/accounts/{accountId}/bluesky-settings | Update Bluesky account settings |
| [**update_gohighlevel_settings**](AccountsApi.md#update_gohighlevel_settings) | **PATCH** /v1/accounts/{accountId}/gohighlevel-settings | Update HighLevel account settings |
| [**update_hub_spot_settings**](AccountsApi.md#update_hub_spot_settings) | **PATCH** /v1/accounts/{accountId}/hubspot-settings | Update HubSpot account settings |
| [**update_salesforce_settings**](AccountsApi.md#update_salesforce_settings) | **PATCH** /v1/accounts/{accountId}/salesforce-settings | Update Salesforce account settings |
| [**update_slack_settings**](AccountsApi.md#update_slack_settings) | **PATCH** /v1/accounts/{accountId}/slack-settings | Update Slack account settings |
| [**update_stripe_settings**](AccountsApi.md#update_stripe_settings) | **PATCH** /v1/accounts/{accountId}/stripe-settings | Update Stripe account settings |
| [**verify_gohighlevel_funnel_tracking**](AccountsApi.md#verify_gohighlevel_funnel_tracking) | **POST** /v1/accounts/{accountId}/gohighlevel-funnel-tracking/verify | Check the Zernio tag on a HighLevel funnel page |


## delete_account

> <DeleteAccountGroup200Response> delete_account(account_id)

Disconnect account

Disconnects and removes a connected account, and fires account.disconnected with disconnectionType intentional.  The account is kept for a 1h grace window, 7 days for a WhatsApp Business app number that Meta had already disconnected (after a phone move, for example). After that it is deleted permanently and its remaining scheduled posts are cancelled.  Reconnecting the same account within the grace window restores it with the same accountId and its scheduled posts. Posts that came due in the meantime then publish late, if their scheduled time is less than 7 days past.  Repeating the call for an account already disconnected returns 404, the account stays in its grace window and the disconnect is not re-run.

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


## get_account

> <GetAccount200Response> get_account(account_id)

Get account

Returns one connected account, in the same shape as an item of `GET /v1/accounts`.  The same access rules apply: a key or a team member limited to some profiles gets a 404 for an account outside them.  An account the list leaves out by default is still returned when you name it:  - one over the plan's profile limit - one on a creator profile - an ad account listed behind its ads login  A malformed `accountId` returns 400; an unknown account, or one you cannot access, returns 404. 

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
  # Get account
  result = api_instance.get_account(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccount200Response>, Integer, Hash)> get_account_with_http_info(account_id)

```ruby
begin
  # Get account
  data, status_code, headers = api_instance.get_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetAccount200Response**](GetAccount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_health

> <GetAccountHealth200Response> get_account_health(account_id)

Check account health

Returns detailed health info for a specific account including token status, permissions, and recommendations.  A failing or stalled analytics sync (see `analyticsSync`) raises a healthy account to at least `warning`.  An X account whose analytics is off has `analyticsOff` with the reason. It never changes `status`: `analyticsSync` then keeps the date of the last read.  An account the platform has restricted or banned is `error`, with the platform's reason in `issues` and a recommendation that says reconnecting does not lift it.  ### Facebook, Instagram and Threads  The token is also probed live. A probe Meta refuses with a dead-token error sets `tokenStatus.valid` to `false` and names Meta's code, subcode and fbtrace in `issues`.  The exception: if an analytics sync succeeded with that token in the last six hours, the token stays `valid` and `issues` reports the probe as inconclusive, since Meta answers a transient 190 to live tokens now and then.  Neither verdict disconnects the account. That happens only when a real operation fails, and `account.disconnected` is sent.  ### WhatsApp  The response also includes `platformConnection`, a live probe of the Meta link behind the channel (the same read as `GET /v1/whatsapp/number-info`).  The OAuth token can be perfectly valid while Meta refuses to serve the phone-number object (for example after a phone-side coexistence disconnect). So `tokenStatus` alone is not a liveness signal for WhatsApp.  - When the Meta link is dead, `platformConnection.status` is `disconnected` and the overall `status` is `error`. - When Meta reports that the number's inbound message webhook does not reach Zernio, or subscribing the number's WhatsApp Business Account to Zernio's webhooks failed at connect, `platformConnection.inboundWebhookSubscribed` is `false`, an entry is added to `issues`, and the overall `status` is at least `warning`. - When `platformConnection.phoneStatus` is anything other than `CONNECTED`, an entry is added to `issues` and the overall `status` is at least `warning`; `BANNED` makes it `error`. `disconnectReason` stays null, since reconnecting does not lift a Meta status. - When Meta reports `platformConnection.canSendMessage` as `BLOCKED` (for example a payment-method error on the WhatsApp Business Account), an entry is added to `issues` with Meta's own reason, the recommendation is Meta's suggested fix, and the overall `status` is at least `warning`. `LIMITED` does not change `status`. Reconnecting does not lift it. - When sends to one country keep failing with error 130497 (3 failures within 7 days, none delivered there since), an entry naming the country is added to `issues` and `status` is at least `warning`. The recommendation says how Meta lifts it. A delivered send there clears it. - `coexistenceHistorySync` reports the latest chat history request of a coexistence number. Meta shares a number's chat history only once until the number is disconnected inside the WhatsApp Business app. - When Meta refused because an earlier connection already used it (Meta error 135000, or 4 after rapid reconnects) and this account holds no imported history, `coexistenceHistorySync.status` is `already_synced` and an entry is added to `issues`. It never changes the overall `status`. - The recommendation then gives the steps that get a new import: disconnect inside the WhatsApp Business app (Settings > Account > Business Platform), then connect the number again. Removing the account in Zernio and connecting it again does not.  ### LINE  The response also includes `lineWebhook`, a live read of the channel's webhook settings at LINE. It is one LINE call per request, given up after a few seconds, and skipped while the account is inactive or needs reconnecting.  If LINE rejects the channel credentials during that read, the account is flagged for reconnection and the overall `status` is `error`.  - `active: false` means Webhooks are turned off in LINE Official Account Manager, so LINE sends nothing to Zernio. An entry is added to `issues` with the fix (Settings > Response settings > Webhooks) and the overall `status` is at least `warning`. - `destination` is `other` when the channel's webhook URL points at another integration, `another_zernio_account` when the same channel is connected to another Zernio account that now receives its events, and `missing` when none is set. Each adds an entry to `issues` and makes the overall `status` at least `warning`. - Both are `null` when LINE could not be read; nothing is added to `issues` then.  ### Standalone ads connections (`googleads`, `redditads`, `microsoftads`)  A connection that cannot serve requests until a fresh OAuth repairs it adds an entry to `issues`. It also adds a recommendation to call `GET /v1/connect/{platform}/ads`, whose `authUrl` reconnects the same account.  On `redditads` this is a connection authorized before Zernio needed a Reddit permission it now uses (for example `adsconversions`). Reddit refuses those requests until the user reconnects and allows every permission on Reddit's consent screen. 

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

> <GetAccountPosts200Response> get_account_posts(account_id, opts)

List posts published on the platform

Returns the most recent posts that exist on the platform for a connected account, newest first, read live from the platform API. This covers everything on the account, including posts that were never created through Zernio.  ### Pagination  Returns `limit` posts (25 by default, up to 100). When `pagination.hasMore` is true, send `pagination.nextCursor` back as `cursor` for the next, older page, until `nextCursor` is null.  On TikTok only the newest page is available for now: `pagination.hasMore` is always false there.  On X:  - Every page, the first one included, is a separate X read billed through your X API usage. You control the cost by choosing whether to fetch the next page. - A page reads `limit` tweets. X reads at least 5 per request, so a `limit` below 5 is billed as 5 tweets. A tweet read again on the same UTC day is not billed twice. - A page can hold fewer than `limit` posts, because replies and reposts are left out. - X serves only the newest 800 tweets of a timeline, so `hasMore` turns false past that.  Use it to obtain the platform's own post id, which the analytics endpoints take as input. On YouTube the returned `id` is the video ID that `GET /v1/analytics/youtube/daily-views`, `/video-retention` and `/demographics` expect as `videoId`, so this endpoint is what backs a video picker in your own UI.  ### Platform-specific fields  Not every field applies to every platform. Absent fields are omitted from the response.  - `reactionCount`: Facebook and LinkedIn. - `shareCount`: platform dependent. - `cid`: the Bluesky content id needed to reply. - `subreddit`: Reddit only. - `title`, `description`, `link`, `boardId` and `boardOwnerUsername`: Pinterest only (the native Pin values; `message` keeps title and description joined). - `isOwner`: Pinterest and Facebook. On Pinterest, true for a Pin the account created and false for a Pin it saved from another user, so keep `isOwner: true` to import only its own Pins. On Facebook, false marks a collab post by another Page.  ### Expired tokens  The account's token is refreshed before the call when it has expired. When the refresh cannot recover it, the response is a 401 with code `TOKEN_EXPIRED` and the account has to be reconnected. 

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
opts = {
  limit: 56, # Integer | Page size. Values above the maximum return 400 rather than being clamped.
  cursor: 'cursor_example' # String | `pagination.nextCursor` of the previous page, sent back unchanged. An unreadable cursor returns 400.
}

begin
  # List posts published on the platform
  result = api_instance.get_account_posts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_account_posts: #{e}"
end
```

#### Using the get_account_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountPosts200Response>, Integer, Hash)> get_account_posts_with_http_info(account_id, opts)

```ruby
begin
  # List posts published on the platform
  data, status_code, headers = api_instance.get_account_posts_with_http_info(account_id, opts)
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
| **limit** | **Integer** | Page size. Values above the maximum return 400 rather than being clamped. | [optional][default to 25] |
| **cursor** | **String** | &#x60;pagination.nextCursor&#x60; of the previous page, sent back unchanged. An unreadable cursor returns 400. | [optional] |

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

Returns health status of all connected accounts including token validity, permissions, and issues needing attention. A failing or stalled analytics sync (see `analyticsSync`) raises a healthy account to at least warning.  An X account whose analytics is off has `analyticsOff` with the reason. It never changes `status`: `analyticsSync` then keeps the date of the last read.  An account the platform has restricted or banned (for example a WhatsApp number Meta reports as BANNED) is `error`, with the platform's reason in `issues`. `needsReconnect` stays false, since reconnecting does not lift it. 

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

Returns follower count history and growth metrics for connected accounts. Requires analytics add-on subscription. Follower counts are refreshed once per day.  ### Limits  - At most 25 accounts per request: up to 25 `accountIds`, or a page of accounts. More than 25 `accountIds` returns 400. - Without `accountIds`, the response is the first page of 25 accounts even when `limit` and `cursor` are omitted. Pass `pagination.nextCursor` back as `cursor` for the next one. - When that default page cuts the list, the response also carries a `warning` and the headers `X-Result-Truncated: true` and `X-Result-Limit: 25`. - At most 1 year between `fromDate` and `toDate`. A longer range is cut to the year before `toDate`: `dateRange.from` shows where the data starts and the response carries a `warning`.  The newer way to read this is `GET /v1/metrics/accounts` with `metrics=followers,followersGrowth` and the granularity you need. 

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
  account_ids: 'account_ids_example', # String | Comma-separated list of up to 25 account IDs. Optional: without it, the response pages through all your accounts.
  profile_id: 'profile_id_example', # String | Filter by profile ID
  from_date: Date.parse('2013-10-20'), # Date | Start date in YYYY-MM-DD format (defaults to one year before toDate). An earlier date is moved to one year before toDate.
  to_date: Date.parse('2013-10-20'), # Date | End date in YYYY-MM-DD format (defaults to today)
  granularity: 'daily', # String | Data aggregation level
  limit: 56, # Integer | Accounts per page, ordered by account id; the response carries `pagination.nextCursor`. Without limit or cursor, a request without accountIds still gets a first page of 25.
  cursor: 'cursor_example' # String | Opaque cursor from a previous response's `pagination.nextCursor`; returns the next page of `limit` accounts (25 when limit is omitted). A cursor we cannot parse returns 400.
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
| **account_ids** | **String** | Comma-separated list of up to 25 account IDs. Optional: without it, the response pages through all your accounts. | [optional] |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **from_date** | **Date** | Start date in YYYY-MM-DD format (defaults to one year before toDate). An earlier date is moved to one year before toDate. | [optional] |
| **to_date** | **Date** | End date in YYYY-MM-DD format (defaults to today) | [optional] |
| **granularity** | **String** | Data aggregation level | [optional][default to &#39;daily&#39;] |
| **limit** | **Integer** | Accounts per page, ordered by account id; the response carries &#x60;pagination.nextCursor&#x60;. Without limit or cursor, a request without accountIds still gets a first page of 25. | [optional] |
| **cursor** | **String** | Opaque cursor from a previous response&#39;s &#x60;pagination.nextCursor&#x60;; returns the next page of &#x60;limit&#x60; accounts (25 when limit is omitted). A cursor we cannot parse returns 400. | [optional] |

### Return type

[**FollowerStatsResponse**](FollowerStatsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_gohighlevel_funnel_tracking

> <GohighlevelFunnelTracking> get_gohighlevel_funnel_tracking(account_id)

Get HighLevel funnel tracking

Get the Zernio tag for a connected HighLevel sub-account's funnels and websites, created on the first call, and the line to paste into each funnel's tracking code (the funnel's Settings, then Head tracking code).  Each funnel and website says whether it already carries the tag, and `live` whether the tag has sent its first visit. Visits on tagged pages tie ad clicks to the leads and sales HighLevel records.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.

begin
  # Get HighLevel funnel tracking
  result = api_instance.get_gohighlevel_funnel_tracking(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_gohighlevel_funnel_tracking: #{e}"
end
```

#### Using the get_gohighlevel_funnel_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GohighlevelFunnelTracking>, Integer, Hash)> get_gohighlevel_funnel_tracking_with_http_info(account_id)

```ruby
begin
  # Get HighLevel funnel tracking
  data, status_code, headers = api_instance.get_gohighlevel_funnel_tracking_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GohighlevelFunnelTracking>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_gohighlevel_funnel_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |

### Return type

[**GohighlevelFunnelTracking**](GohighlevelFunnelTracking.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_gohighlevel_settings

> <GetGohighlevelSettings200Response> get_gohighlevel_settings(account_id)

Get HighLevel account settings

Read a connected HighLevel sub-account and what Zernio relays from it and writes back to it.

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
  # Get HighLevel account settings
  result = api_instance.get_gohighlevel_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_gohighlevel_settings: #{e}"
end
```

#### Using the get_gohighlevel_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGohighlevelSettings200Response>, Integer, Hash)> get_gohighlevel_settings_with_http_info(account_id)

```ruby
begin
  # Get HighLevel account settings
  data, status_code, headers = api_instance.get_gohighlevel_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGohighlevelSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_gohighlevel_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetGohighlevelSettings200Response**](GetGohighlevelSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hub_spot_settings

> <GetHubSpotSettings200Response> get_hub_spot_settings(account_id)

Get HubSpot account settings

Read a connected HubSpot portal and what Zernio syncs to it.

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
  # Get HubSpot account settings
  result = api_instance.get_hub_spot_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_hub_spot_settings: #{e}"
end
```

#### Using the get_hub_spot_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHubSpotSettings200Response>, Integer, Hash)> get_hub_spot_settings_with_http_info(account_id)

```ruby
begin
  # Get HubSpot account settings
  data, status_code, headers = api_instance.get_hub_spot_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHubSpotSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_hub_spot_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetHubSpotSettings200Response**](GetHubSpotSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_follow_status

> <GetInstagramFollowStatus200Response> get_instagram_follow_status(account_id, user_id, opts)

Check whether an Instagram user follows the account

Resolves the follow relationship between an Instagram user and the connected account, plus their public profile counters.  `userId` is the Instagram-scoped id (IGSID) Meta gives you on a webhook: `sender.id` on `message.received`, `comment.author.id` on `comment.received`.  ### When it cannot be resolved  **Meta only answers for people who have MESSAGED the account.** Commenting grants no consent, so a commenter who has never DMed you is unresolvable. That is a platform rule, not a limitation of this endpoint.  When it cannot be resolved the response is still `200` with `isFollower: null` and an `unavailableReason`, because \"unknown\" is a normal state to branch on:  - `consent_required`: the user has never messaged this account. - `dm_access_disabled`: the account owner turned off Instagram Direct API access. - `not_messageable`: the id is not a messaging-scoped id. - `error`: a transient Graph API failure.  ### Gating comment automations  To gate a comment automation on this, use the automation's `audience` rules instead of calling this per comment. They run the same lookup only on comments that actually match a keyword, and can ask the commenter to confirm with one tap.  ### Caching  Answers are cached briefly per (account, user). Pass `refresh=true` right after asking someone to follow, so a follow from a moment ago is visible. 

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


## get_salesforce_settings

> <GetSalesforceSettings200Response> get_salesforce_settings(account_id)

Get Salesforce account settings

Read a connected Salesforce org and what Zernio syncs to it.

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
  # Get Salesforce account settings
  result = api_instance.get_salesforce_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_salesforce_settings: #{e}"
end
```

#### Using the get_salesforce_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSalesforceSettings200Response>, Integer, Hash)> get_salesforce_settings_with_http_info(account_id)

```ruby
begin
  # Get Salesforce account settings
  data, status_code, headers = api_instance.get_salesforce_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSalesforceSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_salesforce_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetSalesforceSettings200Response**](GetSalesforceSettings200Response.md)

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


## get_stripe_settings

> <GetStripeSettings200Response> get_stripe_settings(account_id)

Get Stripe account settings

Read a connected Stripe account and whether its sales go to the ad platforms.

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
  # Get Stripe account settings
  result = api_instance.get_stripe_settings(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_stripe_settings: #{e}"
end
```

#### Using the get_stripe_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStripeSettings200Response>, Integer, Hash)> get_stripe_settings_with_http_info(account_id)

```ruby
begin
  # Get Stripe account settings
  data, status_code, headers = api_instance.get_stripe_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStripeSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->get_stripe_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetStripeSettings200Response**](GetStripeSettings200Response.md)

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


## grant_business_partner

> <GrantBusinessPartner200Response> grant_business_partner(account_id, grant_business_partner_request)

Share the Page with a partner business

Grants a partner business portfolio tasks on the Facebook Page behind this account.  With `ADVERTISE`, the partner can run ads for the Page from ad accounts in its own portfolio. This is how an integrator advertises for an end user without touching the end user's ad accounts.  ### Responses  - `422`: the Page is outside any business portfolio. Meta only lets a user token share a Page that a portfolio owns, so claim it into one at business.facebook.com first. - `200` with `alreadyShared: true` and the tasks the partner currently holds: the portfolio already has access. Meta refuses a second grant instead of replacing its tasks.  To change a partner's tasks, revoke and grant again.  ### After the grant  The partner assigns its own people to the Page with `POST /v1/ads/page-users`; Meta does not assign partner admins automatically.  The Instagram professional account linked to the Page is returned in `page` so the partner can reference it. Meta exposes no API to share Instagram accounts; that is done in Business Settings. 

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
account_id = 'account_id_example' # String | Zernio SocialAccount id of the Facebook or Instagram account.
grant_business_partner_request = Zernio::GrantBusinessPartnerRequest.new({business_id: 'business_id_example'}) # GrantBusinessPartnerRequest | 

begin
  # Share the Page with a partner business
  result = api_instance.grant_business_partner(account_id, grant_business_partner_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->grant_business_partner: #{e}"
end
```

#### Using the grant_business_partner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrantBusinessPartner200Response>, Integer, Hash)> grant_business_partner_with_http_info(account_id, grant_business_partner_request)

```ruby
begin
  # Share the Page with a partner business
  data, status_code, headers = api_instance.grant_business_partner_with_http_info(account_id, grant_business_partner_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrantBusinessPartner200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->grant_business_partner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id of the Facebook or Instagram account. |  |
| **grant_business_partner_request** | [**GrantBusinessPartnerRequest**](GrantBusinessPartnerRequest.md) |  |  |

### Return type

[**GrantBusinessPartner200Response**](GrantBusinessPartner200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_accounts

> <AccountsListResponse> list_accounts(opts)

List accounts

Returns connected accounts. Only includes accounts within the plan limit by default. Follower data requires analytics add-on.  ### Pagination  Server-side pagination is optional. When omitted, the dashboard gets every account, while an API key or OAuth app gets at most 500: the first cursor page, ordered by account id.  When that cap cuts the list, the response carries `warning` and `pagination.nextCursor`, plus the `X-Result-Truncated: true` and `X-Result-Limit: 500` headers. Pass `nextCursor` back as `cursor` (with `limit`) to list the rest.  - Cursor paging: send `limit` alone for the first page, then pass `pagination.nextCursor` back as `cursor` until it is null. Pages are ordered by account id, so accounts added or removed between calls never shift a page. Cannot be combined with `page`, `sort` or `perProfile`. - Offset paging: send `page` and `limit` together. Out-of-range page/limit values are rejected with 400 rather than silently clamped. 

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
  search: 'search_example', # String | Case-insensitive match on the account username, display name or platform user id. A 24-character hexadecimal value is read as an account id and matches only that exact account. Combine with page/limit to paginate the matches.
  category: 'social', # String | Only accounts of this kind. ads = ad accounts (Meta, Google, LinkedIn, Pinterest, TikTok, X, OpenAI, Reddit, Microsoft), communication = WhatsApp, Telegram, Discord, Slack, iMessage, LINE and WeChat, blogs = Shopify and WordPress, crm = HubSpot and Salesforce, analytics = Google Analytics, Search Console, Stripe, Tag Manager and Axon, social = every other platform.
  sort: 'account', # String | Sort an offset-paginated listing (page and limit) by account name, platform, profile name, status (accounts needing a reconnect first when ascending) or connection date. Ties keep the default order: platform, then newest first.
  order: 'asc', # String | Direction for `sort`.
  include_over_limit: true, # Boolean | When true, includes accounts from over-limit profiles.
  exclude_hidden: true, # Boolean | When true, leaves out accounts the dashboard does not show as connections:  - posting accounts with `enabled: false` (ads accounts are always kept, whatever their `enabled` value); - the internal `sms` and `phone` accounts behind each phone number.  Applied before pagination, so page totals and `statusCounts` count only the remaining accounts. Sandbox accounts added by `includeSandbox` are appended after this filter. Accepts `true` or `false` in any letter case; any other value returns 400. 
  platforms: 'platforms_example', # String | Comma-separated platforms (up to 50) to list together, the several-platform form of `platform`. Applied before pagination.
  ad_account_rows: true, # Boolean | When true, lists every ads account row, one per ad account. By default an API key or OAuth app sees each ads login once per profile and platform, as the single ads connection it had before rows per ad account: its oldest row.  Only changes the result once ads are connected as one row per ad account; until then the two shapes are the same. Applied before pagination. Accepts `true` or `false` in any letter case; any other value returns 400. 
  include_creator_accounts: true, # Boolean | When true, also lists the accounts creators connected to your creator campaigns. They sit on creator profiles, which `GET /v1/profiles` does not list, and are left out by default.  Asking for one creator profile by `profileId` lists its accounts either way. Applied before pagination. Accepts `true` or `false` in any letter case; any other value returns 400. 
  include_sandbox: true, # Boolean | When true, appends the shared WhatsApp sandbox account and the iMessage sandbox account to the list when they are active, honouring `platform` but no other filter.  Ignored on a paginated request (page, limit or cursor) and together with `perProfile`. Accepts `true` or `false` in any letter case; any other value returns 400. 
  include_status_counts: true, # Boolean | When true, the response carries `statusCounts`: how many accounts match every other filter of the request (with `status` lifted) in total and how many of those need a reconnection. Accepts `true` or `false` in any letter case; any other value returns 400. 
  page: 56, # Integer | Page number (1-based) for offset paging. Requires limit; omit page, limit and cursor for an unpaged listing (at most 500 accounts for an API key or OAuth app). 
  limit: 56, # Integer | Page size. With page, an offset page; alone or with cursor, a cursor page. 
  cursor: 'cursor_example', # String | Opaque cursor from a previous response's `pagination.nextCursor`; returns the next page of `limit` accounts (500 when limit is omitted). A cursor we cannot parse returns 400. Cannot be combined with page.
  profile_ids: 'profile_ids_example', # String | Comma-separated profile IDs (up to 50) to preview, together with perProfile. The response then also carries `profileTotals`.
  per_profile: 56 # Integer | Return a preview of each profile in profileIds: the newest account of every platform it has, topped up to at least N. Requires profileIds; cannot be combined with page, limit or cursor.
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
| **search** | **String** | Case-insensitive match on the account username, display name or platform user id. A 24-character hexadecimal value is read as an account id and matches only that exact account. Combine with page/limit to paginate the matches. | [optional] |
| **category** | **String** | Only accounts of this kind. ads &#x3D; ad accounts (Meta, Google, LinkedIn, Pinterest, TikTok, X, OpenAI, Reddit, Microsoft), communication &#x3D; WhatsApp, Telegram, Discord, Slack, iMessage, LINE and WeChat, blogs &#x3D; Shopify and WordPress, crm &#x3D; HubSpot and Salesforce, analytics &#x3D; Google Analytics, Search Console, Stripe, Tag Manager and Axon, social &#x3D; every other platform. | [optional] |
| **sort** | **String** | Sort an offset-paginated listing (page and limit) by account name, platform, profile name, status (accounts needing a reconnect first when ascending) or connection date. Ties keep the default order: platform, then newest first. | [optional] |
| **order** | **String** | Direction for &#x60;sort&#x60;. | [optional][default to &#39;asc&#39;] |
| **include_over_limit** | **Boolean** | When true, includes accounts from over-limit profiles. | [optional][default to false] |
| **exclude_hidden** | **Boolean** | When true, leaves out accounts the dashboard does not show as connections:  - posting accounts with &#x60;enabled: false&#x60; (ads accounts are always kept, whatever their &#x60;enabled&#x60; value); - the internal &#x60;sms&#x60; and &#x60;phone&#x60; accounts behind each phone number.  Applied before pagination, so page totals and &#x60;statusCounts&#x60; count only the remaining accounts. Sandbox accounts added by &#x60;includeSandbox&#x60; are appended after this filter. Accepts &#x60;true&#x60; or &#x60;false&#x60; in any letter case; any other value returns 400.  | [optional][default to false] |
| **platforms** | **String** | Comma-separated platforms (up to 50) to list together, the several-platform form of &#x60;platform&#x60;. Applied before pagination. | [optional] |
| **ad_account_rows** | **Boolean** | When true, lists every ads account row, one per ad account. By default an API key or OAuth app sees each ads login once per profile and platform, as the single ads connection it had before rows per ad account: its oldest row.  Only changes the result once ads are connected as one row per ad account; until then the two shapes are the same. Applied before pagination. Accepts &#x60;true&#x60; or &#x60;false&#x60; in any letter case; any other value returns 400.  | [optional][default to false] |
| **include_creator_accounts** | **Boolean** | When true, also lists the accounts creators connected to your creator campaigns. They sit on creator profiles, which &#x60;GET /v1/profiles&#x60; does not list, and are left out by default.  Asking for one creator profile by &#x60;profileId&#x60; lists its accounts either way. Applied before pagination. Accepts &#x60;true&#x60; or &#x60;false&#x60; in any letter case; any other value returns 400.  | [optional][default to false] |
| **include_sandbox** | **Boolean** | When true, appends the shared WhatsApp sandbox account and the iMessage sandbox account to the list when they are active, honouring &#x60;platform&#x60; but no other filter.  Ignored on a paginated request (page, limit or cursor) and together with &#x60;perProfile&#x60;. Accepts &#x60;true&#x60; or &#x60;false&#x60; in any letter case; any other value returns 400.  | [optional][default to false] |
| **include_status_counts** | **Boolean** | When true, the response carries &#x60;statusCounts&#x60;: how many accounts match every other filter of the request (with &#x60;status&#x60; lifted) in total and how many of those need a reconnection. Accepts &#x60;true&#x60; or &#x60;false&#x60; in any letter case; any other value returns 400.  | [optional][default to false] |
| **page** | **Integer** | Page number (1-based) for offset paging. Requires limit; omit page, limit and cursor for an unpaged listing (at most 500 accounts for an API key or OAuth app).  | [optional] |
| **limit** | **Integer** | Page size. With page, an offset page; alone or with cursor, a cursor page.  | [optional] |
| **cursor** | **String** | Opaque cursor from a previous response&#39;s &#x60;pagination.nextCursor&#x60;; returns the next page of &#x60;limit&#x60; accounts (500 when limit is omitted). A cursor we cannot parse returns 400. Cannot be combined with page. | [optional] |
| **profile_ids** | **String** | Comma-separated profile IDs (up to 50) to preview, together with perProfile. The response then also carries &#x60;profileTotals&#x60;. | [optional] |
| **per_profile** | **Integer** | Return a preview of each profile in profileIds: the newest account of every platform it has, topped up to at least N. Requires profileIds; cannot be combined with page, limit or cursor. | [optional] |

### Return type

[**AccountsListResponse**](AccountsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_partners

> <ListBusinessPartners200Response> list_business_partners(account_id)

List partner businesses of the Page

The business portfolios (Meta Business Managers) that may act on the Facebook Page behind this account, plus the Page's owning portfolio and linked Instagram professional account. Works on Facebook accounts and on Instagram accounts connected through Facebook Login. 

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
account_id = 'account_id_example' # String | Zernio SocialAccount id of the Facebook or Instagram account.

begin
  # List partner businesses of the Page
  result = api_instance.list_business_partners(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_business_partners: #{e}"
end
```

#### Using the list_business_partners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessPartners200Response>, Integer, Hash)> list_business_partners_with_http_info(account_id)

```ruby
begin
  # List partner businesses of the Page
  data, status_code, headers = api_instance.list_business_partners_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessPartners200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_business_partners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id of the Facebook or Instagram account. |  |

### Return type

[**ListBusinessPartners200Response**](ListBusinessPartners200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_gohighlevel_audience_syncs

> <GohighlevelAudienceSyncOverview> list_gohighlevel_audience_syncs(account_id)

List HighLevel tag audience syncs

List the tags of a connected HighLevel sub-account that Zernio keeps as customer list audiences on Meta and Reddit ad accounts, the ad accounts a tag can sync to (`targetChoices`), and the sub-account's tags. Pass a `targetChoices` entry to `startGohighlevelAudienceSync` to start a sync.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.

begin
  # List HighLevel tag audience syncs
  result = api_instance.list_gohighlevel_audience_syncs(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_gohighlevel_audience_syncs: #{e}"
end
```

#### Using the list_gohighlevel_audience_syncs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GohighlevelAudienceSyncOverview>, Integer, Hash)> list_gohighlevel_audience_syncs_with_http_info(account_id)

```ruby
begin
  # List HighLevel tag audience syncs
  data, status_code, headers = api_instance.list_gohighlevel_audience_syncs_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GohighlevelAudienceSyncOverview>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_gohighlevel_audience_syncs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |

### Return type

[**GohighlevelAudienceSyncOverview**](GohighlevelAudienceSyncOverview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_hub_spot_contact_properties

> <ListHubSpotContactProperties200Response> list_hub_spot_contact_properties(account_id)

List HubSpot contact properties

The connected portal's visible contact properties, with the values of those that have a fixed list. Use it to pick the property and values of `qualifiedLeads`. Cached for 10 minutes.

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
  # List HubSpot contact properties
  result = api_instance.list_hub_spot_contact_properties(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_hub_spot_contact_properties: #{e}"
end
```

#### Using the list_hub_spot_contact_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListHubSpotContactProperties200Response>, Integer, Hash)> list_hub_spot_contact_properties_with_http_info(account_id)

```ruby
begin
  # List HubSpot contact properties
  data, status_code, headers = api_instance.list_hub_spot_contact_properties_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListHubSpotContactProperties200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_hub_spot_contact_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**ListHubSpotContactProperties200Response**](ListHubSpotContactProperties200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tik_tok_commercial_music

> <ListTikTokCommercialMusic200Response> list_tik_tok_commercial_music(account_id, opts)

List trending commercial music

Returns the 100 currently trending tracks of TikTok's Commercial Music Library for a TikTok account connected through the TikTok for Business app.  The list is not paged; countryCode selects the country chart.  ### Using a track in a post  Send a track's clip.id as tiktokSettings.musicSoundInfo.musicSoundId when creating a post. Fall back to id only when the track has no clip.  Both publish, but with the full-track id TikTok has shown viewers \"This song is not available in your country\" on the sound page (observed from Germany, 2026-10-06). The clip id gave a working sound page for the same track. 

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
  country_code: 'country_code_example' # String | Two-letter ISO 3166-1 country code of the chart to read (for example ES). Defaults to TikTok's global chart.
}

begin
  # List trending commercial music
  result = api_instance.list_tik_tok_commercial_music(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_tik_tok_commercial_music: #{e}"
end
```

#### Using the list_tik_tok_commercial_music_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTikTokCommercialMusic200Response>, Integer, Hash)> list_tik_tok_commercial_music_with_http_info(account_id, opts)

```ruby
begin
  # List trending commercial music
  data, status_code, headers = api_instance.list_tik_tok_commercial_music_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTikTokCommercialMusic200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->list_tik_tok_commercial_music_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The TikTok account ID |  |
| **country_code** | **String** | Two-letter ISO 3166-1 country code of the chart to read (for example ES). Defaults to TikTok&#39;s global chart. | [optional] |

### Return type

[**ListTikTokCommercialMusic200Response**](ListTikTokCommercialMusic200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_account_to_profile

> <MoveAccountToProfile200Response> move_account_to_profile(account_id, move_account_to_profile_request)

Move account to another profile

Moves a connected account to a different profile owned by the same user. The target profile must belong to the same user as the account.  For API keys restricted to specific profiles, BOTH the source account's current profile AND the target profile must be in the key's allowed set. Calls with a target profile outside the key's scope return 403. 

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


## revoke_business_partner

> <RevokeBusinessPartner200Response> revoke_business_partner(account_id, business_id)

Revoke a partner business from the Page

Removes every task the partner business portfolio held on the Page.

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
account_id = 'account_id_example' # String | Zernio SocialAccount id of the Facebook or Instagram account.
business_id = 'business_id_example' # String | Meta business portfolio id of the partner (numeric string).

begin
  # Revoke a partner business from the Page
  result = api_instance.revoke_business_partner(account_id, business_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->revoke_business_partner: #{e}"
end
```

#### Using the revoke_business_partner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevokeBusinessPartner200Response>, Integer, Hash)> revoke_business_partner_with_http_info(account_id, business_id)

```ruby
begin
  # Revoke a partner business from the Page
  data, status_code, headers = api_instance.revoke_business_partner_with_http_info(account_id, business_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevokeBusinessPartner200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->revoke_business_partner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id of the Facebook or Instagram account. |  |
| **business_id** | **String** | Meta business portfolio id of the partner (numeric string). |  |

### Return type

[**RevokeBusinessPartner200Response**](RevokeBusinessPartner200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_tik_tok_locations

> <SearchTikTokLocations200Response> search_tik_tok_locations(account_id, query)

Search TikTok location tags

Searches the location tags a TikTok account connected through the TikTok for Business app can attach to a video post.  Send a result's id and name as tiktokSettings.locationId and locationName when creating a post.  TikTok answers the 20 closest matches and fills the list with fuzzy matches when nothing matches, so an unrelated result does not mean the place is missing. 

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
query = 'query_example' # String | Place name to search, for example a city, a venue or an address

begin
  # Search TikTok location tags
  result = api_instance.search_tik_tok_locations(account_id, query)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->search_tik_tok_locations: #{e}"
end
```

#### Using the search_tik_tok_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchTikTokLocations200Response>, Integer, Hash)> search_tik_tok_locations_with_http_info(account_id, query)

```ruby
begin
  # Search TikTok location tags
  data, status_code, headers = api_instance.search_tik_tok_locations_with_http_info(account_id, query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchTikTokLocations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->search_tik_tok_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The TikTok account ID |  |
| **query** | **String** | Place name to search, for example a city, a venue or an address |  |

### Return type

[**SearchTikTokLocations200Response**](SearchTikTokLocations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_gohighlevel_past_won_deals

> <SendGohighlevelPastWonDeals200Response> send_gohighlevel_past_won_deals(account_id)

Send past HighLevel won deals as conversions

Send the opportunities a connected HighLevel sub-account won in the last 90 days through the conversion relay. Each is stored as a Purchase conversion and forwarded to the profile's ad platforms when `reportToAds` is on.  Each call sends up to 50 and skips deals Zernio already holds, so calling again goes on with the rest. `remaining` says how many are left. A deal that fails is picked again on the next call, so stop when a call sends none.  Returns `relay_off` when the conversion relay is off (`updateGohighlevelSettings`). Needs a read-write key.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.

begin
  # Send past HighLevel won deals as conversions
  result = api_instance.send_gohighlevel_past_won_deals(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->send_gohighlevel_past_won_deals: #{e}"
end
```

#### Using the send_gohighlevel_past_won_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendGohighlevelPastWonDeals200Response>, Integer, Hash)> send_gohighlevel_past_won_deals_with_http_info(account_id)

```ruby
begin
  # Send past HighLevel won deals as conversions
  data, status_code, headers = api_instance.send_gohighlevel_past_won_deals_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendGohighlevelPastWonDeals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->send_gohighlevel_past_won_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |

### Return type

[**SendGohighlevelPastWonDeals200Response**](SendGohighlevelPastWonDeals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_gohighlevel_audience_sync

> <StartGohighlevelAudienceSync201Response> start_gohighlevel_audience_sync(account_id, start_gohighlevel_audience_sync_request)

Sync a HighLevel tag to ad audiences

Keep every HighLevel contact with a tag as a customer list audience on one or more Meta or Reddit ad accounts of the profile. Take `targets` from `targetChoices` of `listGohighlevelAudienceSyncs`.  Zernio creates one audience per ad account and fills it within a few minutes. A contact joins or leaves as soon as the tag is added to or removed from it, and every 6 hours Zernio re-reads the tag. Emails and phones are hashed before upload.  A tag syncs once per sub-account; stop it to change its ad accounts. Needs a read-write key.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.
start_gohighlevel_audience_sync_request = Zernio::StartGohighlevelAudienceSyncRequest.new({tag: 'tag_example', targets: [Zernio::StartGohighlevelAudienceSyncRequestTargetsInner.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'})]}) # StartGohighlevelAudienceSyncRequest | 

begin
  # Sync a HighLevel tag to ad audiences
  result = api_instance.start_gohighlevel_audience_sync(account_id, start_gohighlevel_audience_sync_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->start_gohighlevel_audience_sync: #{e}"
end
```

#### Using the start_gohighlevel_audience_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartGohighlevelAudienceSync201Response>, Integer, Hash)> start_gohighlevel_audience_sync_with_http_info(account_id, start_gohighlevel_audience_sync_request)

```ruby
begin
  # Sync a HighLevel tag to ad audiences
  data, status_code, headers = api_instance.start_gohighlevel_audience_sync_with_http_info(account_id, start_gohighlevel_audience_sync_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartGohighlevelAudienceSync201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->start_gohighlevel_audience_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |
| **start_gohighlevel_audience_sync_request** | [**StartGohighlevelAudienceSyncRequest**](StartGohighlevelAudienceSyncRequest.md) |  |  |

### Return type

[**StartGohighlevelAudienceSync201Response**](StartGohighlevelAudienceSync201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## stop_gohighlevel_audience_sync

> <DeleteAccountGroup200Response> stop_gohighlevel_audience_sync(account_id, sync_id)

Stop a HighLevel tag audience sync

Stop keeping a tag in sync. Its audiences stay on the ad accounts with their current members, so running ads keep their targeting; delete an audience with `deleteAdAudience`. Needs a read-write key.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.
sync_id = 'sync_id_example' # String | The sync id from `listGohighlevelAudienceSyncs`.

begin
  # Stop a HighLevel tag audience sync
  result = api_instance.stop_gohighlevel_audience_sync(account_id, sync_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->stop_gohighlevel_audience_sync: #{e}"
end
```

#### Using the stop_gohighlevel_audience_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAccountGroup200Response>, Integer, Hash)> stop_gohighlevel_audience_sync_with_http_info(account_id, sync_id)

```ruby
begin
  # Stop a HighLevel tag audience sync
  data, status_code, headers = api_instance.stop_gohighlevel_audience_sync_with_http_info(account_id, sync_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAccountGroup200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->stop_gohighlevel_audience_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |
| **sync_id** | **String** | The sync id from &#x60;listGohighlevelAudienceSyncs&#x60;. |  |

### Return type

[**DeleteAccountGroup200Response**](DeleteAccountGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account

> <UpdateAccount200Response> update_account(account_id, update_account_request)

Update account

Updates a connected account's display name or username override.  ### X capabilities  For X accounts on usage-based billing, also accepts an `xCapabilities` object to toggle background API operations that incur X API pass-through costs.  - Both fields are opt-in (default `false`). - When off, no analytics syncs or DM polling are performed for that account, and no API call is metered for those operations. - Publishing and deleting posts are always available regardless of these toggles. - Setting `xCapabilities` on a non-X account returns 400.  ### Meta ads sync  For Facebook accounts, also accepts `metaAdsSyncEnabled` to sync the Meta ads of the ad accounts the account reaches without a Meta Ads connection. See the field for what turning it on and off does. 

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


## update_gohighlevel_settings

> <UpdateGohighlevelSettings200Response> update_gohighlevel_settings(account_id, update_gohighlevel_settings_request)

Update HighLevel account settings

Turn the conversion relay, the write-back to HighLevel contacts, forwarding to the profile's ad platforms, contact sync, conversation logging, delivery marks or the ad lead sync on or off for a connected HighLevel sub-account. Send at least one field; omitted fields keep their value. Settings survive reconnecting the same sub-account.

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
update_gohighlevel_settings_request = Zernio::UpdateGohighlevelSettingsRequest.new # UpdateGohighlevelSettingsRequest | 

begin
  # Update HighLevel account settings
  result = api_instance.update_gohighlevel_settings(account_id, update_gohighlevel_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_gohighlevel_settings: #{e}"
end
```

#### Using the update_gohighlevel_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGohighlevelSettings200Response>, Integer, Hash)> update_gohighlevel_settings_with_http_info(account_id, update_gohighlevel_settings_request)

```ruby
begin
  # Update HighLevel account settings
  data, status_code, headers = api_instance.update_gohighlevel_settings_with_http_info(account_id, update_gohighlevel_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGohighlevelSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_gohighlevel_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_gohighlevel_settings_request** | [**UpdateGohighlevelSettingsRequest**](UpdateGohighlevelSettingsRequest.md) |  |  |

### Return type

[**UpdateGohighlevelSettings200Response**](UpdateGohighlevelSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_hub_spot_settings

> <UpdateHubSpotSettings200Response> update_hub_spot_settings(account_id, update_hub_spot_settings_request)

Update HubSpot account settings

Turn contact sync, message logging, delivery status, deal reporting or qualified leads on or off for a connected HubSpot portal, or set defaults for the contact properties the portal requires. Send at least one field; omitted fields keep their value. Settings survive reconnecting the same portal.

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
update_hub_spot_settings_request = Zernio::UpdateHubSpotSettingsRequest.new # UpdateHubSpotSettingsRequest | 

begin
  # Update HubSpot account settings
  result = api_instance.update_hub_spot_settings(account_id, update_hub_spot_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_hub_spot_settings: #{e}"
end
```

#### Using the update_hub_spot_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateHubSpotSettings200Response>, Integer, Hash)> update_hub_spot_settings_with_http_info(account_id, update_hub_spot_settings_request)

```ruby
begin
  # Update HubSpot account settings
  data, status_code, headers = api_instance.update_hub_spot_settings_with_http_info(account_id, update_hub_spot_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateHubSpotSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_hub_spot_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_hub_spot_settings_request** | [**UpdateHubSpotSettingsRequest**](UpdateHubSpotSettingsRequest.md) |  |  |

### Return type

[**UpdateHubSpotSettings200Response**](UpdateHubSpotSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_salesforce_settings

> <UpdateSalesforceSettings200Response> update_salesforce_settings(account_id, update_salesforce_settings_request)

Update Salesforce account settings

Turn person creation, conversation logging, delivery marks or closed-won Opportunities (in ad results, to ad platforms) on or off for a connected Salesforce org, or choose whether new people become Leads or Contacts. Send at least one field; omitted fields keep their value. Settings survive reconnecting the same org.

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
update_salesforce_settings_request = Zernio::UpdateSalesforceSettingsRequest.new # UpdateSalesforceSettingsRequest | 

begin
  # Update Salesforce account settings
  result = api_instance.update_salesforce_settings(account_id, update_salesforce_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_salesforce_settings: #{e}"
end
```

#### Using the update_salesforce_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSalesforceSettings200Response>, Integer, Hash)> update_salesforce_settings_with_http_info(account_id, update_salesforce_settings_request)

```ruby
begin
  # Update Salesforce account settings
  data, status_code, headers = api_instance.update_salesforce_settings_with_http_info(account_id, update_salesforce_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSalesforceSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_salesforce_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_salesforce_settings_request** | [**UpdateSalesforceSettingsRequest**](UpdateSalesforceSettingsRequest.md) |  |  |

### Return type

[**UpdateSalesforceSettings200Response**](UpdateSalesforceSettings200Response.md)

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


## update_stripe_settings

> <UpdateStripeSettings200Response> update_stripe_settings(account_id, update_stripe_settings_request)

Update Stripe account settings

Turn sending Stripe sales to the ad platforms on or off for a connected Stripe account. Sales are always stored and counted in campaign results; this only decides whether they are also forwarded.

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
update_stripe_settings_request = Zernio::UpdateStripeSettingsRequest.new({forward_sales: false}) # UpdateStripeSettingsRequest | 

begin
  # Update Stripe account settings
  result = api_instance.update_stripe_settings(account_id, update_stripe_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_stripe_settings: #{e}"
end
```

#### Using the update_stripe_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateStripeSettings200Response>, Integer, Hash)> update_stripe_settings_with_http_info(account_id, update_stripe_settings_request)

```ruby
begin
  # Update Stripe account settings
  data, status_code, headers = api_instance.update_stripe_settings_with_http_info(account_id, update_stripe_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateStripeSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->update_stripe_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_stripe_settings_request** | [**UpdateStripeSettingsRequest**](UpdateStripeSettingsRequest.md) |  |  |

### Return type

[**UpdateStripeSettings200Response**](UpdateStripeSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_gohighlevel_funnel_tracking

> <GohighlevelFunnelTracking> verify_gohighlevel_funnel_tracking(account_id, verify_gohighlevel_funnel_tracking_request)

Check the Zernio tag on a HighLevel funnel page

Load a live funnel or website page and report whether it carries the sub-account's Zernio tag. A page that does adds its domain to the tag's domains, so visits there are tied to the contacts who fill its forms.  Returns the same funnel tracking state as `getGohighlevelFunnelTracking`, with `verified` set. Needs a read-write key.

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
account_id = 'account_id_example' # String | The HighLevel account id from `listAccounts`.
verify_gohighlevel_funnel_tracking_request = Zernio::VerifyGohighlevelFunnelTrackingRequest.new({url: 'url_example'}) # VerifyGohighlevelFunnelTrackingRequest | 

begin
  # Check the Zernio tag on a HighLevel funnel page
  result = api_instance.verify_gohighlevel_funnel_tracking(account_id, verify_gohighlevel_funnel_tracking_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->verify_gohighlevel_funnel_tracking: #{e}"
end
```

#### Using the verify_gohighlevel_funnel_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GohighlevelFunnelTracking>, Integer, Hash)> verify_gohighlevel_funnel_tracking_with_http_info(account_id, verify_gohighlevel_funnel_tracking_request)

```ruby
begin
  # Check the Zernio tag on a HighLevel funnel page
  data, status_code, headers = api_instance.verify_gohighlevel_funnel_tracking_with_http_info(account_id, verify_gohighlevel_funnel_tracking_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GohighlevelFunnelTracking>
rescue Zernio::ApiError => e
  puts "Error when calling AccountsApi->verify_gohighlevel_funnel_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The HighLevel account id from &#x60;listAccounts&#x60;. |  |
| **verify_gohighlevel_funnel_tracking_request** | [**VerifyGohighlevelFunnelTrackingRequest**](VerifyGohighlevelFunnelTrackingRequest.md) |  |  |

### Return type

[**GohighlevelFunnelTracking**](GohighlevelFunnelTracking.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

