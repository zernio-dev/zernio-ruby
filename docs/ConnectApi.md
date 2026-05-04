# Zernio::ConnectApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**complete_telegram_connect**](ConnectApi.md#complete_telegram_connect) | **PATCH** /v1/connect/telegram | Check Telegram status |
| [**complete_whats_app_phone_selection**](ConnectApi.md#complete_whats_app_phone_selection) | **POST** /v1/connect/whatsapp/select-phone-number | Complete WhatsApp phone number selection |
| [**configure_tik_tok_ads_brand_identity**](ConnectApi.md#configure_tik_tok_ads_brand_identity) | **PATCH** /v1/connect/tiktok-ads | Configure TikTok Ads Brand Identity |
| [**connect_ads**](ConnectApi.md#connect_ads) | **GET** /v1/connect/{platform}/ads | Connect ads for a platform |
| [**connect_bluesky_credentials**](ConnectApi.md#connect_bluesky_credentials) | **POST** /v1/connect/bluesky/credentials | Connect Bluesky account |
| [**connect_whats_app_credentials**](ConnectApi.md#connect_whats_app_credentials) | **POST** /v1/connect/whatsapp/credentials | Connect WhatsApp via credentials |
| [**get_connect_url**](ConnectApi.md#get_connect_url) | **GET** /v1/connect/{platform} | Get OAuth connect URL |
| [**get_facebook_pages**](ConnectApi.md#get_facebook_pages) | **GET** /v1/accounts/{accountId}/facebook-page | List Facebook pages |
| [**get_gmb_locations**](ConnectApi.md#get_gmb_locations) | **GET** /v1/accounts/{accountId}/gmb-locations | List GBP locations |
| [**get_linked_in_organizations**](ConnectApi.md#get_linked_in_organizations) | **GET** /v1/accounts/{accountId}/linkedin-organizations | List LinkedIn orgs |
| [**get_pending_o_auth_data**](ConnectApi.md#get_pending_o_auth_data) | **GET** /v1/connect/pending-data | Get pending OAuth data |
| [**get_pinterest_boards**](ConnectApi.md#get_pinterest_boards) | **GET** /v1/accounts/{accountId}/pinterest-boards | List Pinterest boards |
| [**get_reddit_flairs**](ConnectApi.md#get_reddit_flairs) | **GET** /v1/accounts/{accountId}/reddit-flairs | List subreddit flairs |
| [**get_reddit_subreddits**](ConnectApi.md#get_reddit_subreddits) | **GET** /v1/accounts/{accountId}/reddit-subreddits | List Reddit subreddits |
| [**get_telegram_connect_status**](ConnectApi.md#get_telegram_connect_status) | **GET** /v1/connect/telegram | Generate Telegram code |
| [**get_youtube_playlists**](ConnectApi.md#get_youtube_playlists) | **GET** /v1/accounts/{accountId}/youtube-playlists | List YouTube playlists |
| [**handle_o_auth_callback**](ConnectApi.md#handle_o_auth_callback) | **POST** /v1/connect/{platform} | Complete OAuth callback |
| [**initiate_telegram_connect**](ConnectApi.md#initiate_telegram_connect) | **POST** /v1/connect/telegram | Connect Telegram directly |
| [**list_facebook_pages**](ConnectApi.md#list_facebook_pages) | **GET** /v1/connect/facebook/select-page | List Facebook pages |
| [**list_google_business_locations**](ConnectApi.md#list_google_business_locations) | **GET** /v1/connect/googlebusiness/locations | List GBP locations |
| [**list_linked_in_organizations**](ConnectApi.md#list_linked_in_organizations) | **GET** /v1/connect/linkedin/organizations | List LinkedIn orgs |
| [**list_pinterest_boards_for_selection**](ConnectApi.md#list_pinterest_boards_for_selection) | **GET** /v1/connect/pinterest/select-board | List Pinterest boards |
| [**list_snapchat_profiles**](ConnectApi.md#list_snapchat_profiles) | **GET** /v1/connect/snapchat/select-profile | List Snapchat profiles |
| [**list_whats_app_phone_numbers**](ConnectApi.md#list_whats_app_phone_numbers) | **GET** /v1/connect/whatsapp/select-phone-number | List WhatsApp phone numbers for selection |
| [**select_facebook_page**](ConnectApi.md#select_facebook_page) | **POST** /v1/connect/facebook/select-page | Select Facebook page |
| [**select_google_business_location**](ConnectApi.md#select_google_business_location) | **POST** /v1/connect/googlebusiness/select-location | Select GBP location |
| [**select_linked_in_organization**](ConnectApi.md#select_linked_in_organization) | **POST** /v1/connect/linkedin/select-organization | Select LinkedIn org |
| [**select_pinterest_board**](ConnectApi.md#select_pinterest_board) | **POST** /v1/connect/pinterest/select-board | Select Pinterest board |
| [**select_snapchat_profile**](ConnectApi.md#select_snapchat_profile) | **POST** /v1/connect/snapchat/select-profile | Select Snapchat profile |
| [**update_facebook_page**](ConnectApi.md#update_facebook_page) | **PUT** /v1/accounts/{accountId}/facebook-page | Update Facebook page |
| [**update_gmb_location**](ConnectApi.md#update_gmb_location) | **PUT** /v1/accounts/{accountId}/gmb-locations | Update GBP location |
| [**update_linked_in_organization**](ConnectApi.md#update_linked_in_organization) | **PUT** /v1/accounts/{accountId}/linkedin-organization | Switch LinkedIn account type |
| [**update_pinterest_boards**](ConnectApi.md#update_pinterest_boards) | **PUT** /v1/accounts/{accountId}/pinterest-boards | Set default Pinterest board |
| [**update_reddit_subreddits**](ConnectApi.md#update_reddit_subreddits) | **PUT** /v1/accounts/{accountId}/reddit-subreddits | Set default subreddit |
| [**update_youtube_default_playlist**](ConnectApi.md#update_youtube_default_playlist) | **PUT** /v1/accounts/{accountId}/youtube-playlists | Set default YouTube playlist |


## complete_telegram_connect

> <CompleteTelegramConnect200Response> complete_telegram_connect(code)

Check Telegram status

Poll this endpoint to check if a Telegram access code has been used to connect a channel/group. Recommended polling interval: 3 seconds. Status values: pending (waiting for user), connected (channel/group linked), expired (generate a new code). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
code = 'ZRN-ABC123' # String | The access code to check status for

begin
  # Check Telegram status
  result = api_instance.complete_telegram_connect(code)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->complete_telegram_connect: #{e}"
end
```

#### Using the complete_telegram_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompleteTelegramConnect200Response>, Integer, Hash)> complete_telegram_connect_with_http_info(code)

```ruby
begin
  # Check Telegram status
  data, status_code, headers = api_instance.complete_telegram_connect_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompleteTelegramConnect200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->complete_telegram_connect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The access code to check status for |  |

### Return type

[**CompleteTelegramConnect200Response**](CompleteTelegramConnect200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## complete_whats_app_phone_selection

> <CompleteWhatsAppPhoneSelection200Response> complete_whats_app_phone_selection(complete_whats_app_phone_selection_request, opts)

Complete WhatsApp phone number selection

Bind a specific WhatsApp phone number to the Zernio profile after the user picks one from `listWhatsAppPhoneNumbers`. Exchanges the short-lived OAuth token for a long-lived token, subscribes the WABA to webhooks, and creates the SocialAccount. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
complete_whats_app_phone_selection_request = Zernio::CompleteWhatsAppPhoneSelectionRequest.new({profile_id: 'profile_id_example', phone_number_id: 'phone_number_id_example', waba_id: 'waba_id_example', temp_token: 'temp_token_example'}) # CompleteWhatsAppPhoneSelectionRequest | 
opts = {
  x_connect_token: 'x_connect_token_example' # String | Alternative auth for API users' end customers
}

begin
  # Complete WhatsApp phone number selection
  result = api_instance.complete_whats_app_phone_selection(complete_whats_app_phone_selection_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->complete_whats_app_phone_selection: #{e}"
end
```

#### Using the complete_whats_app_phone_selection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompleteWhatsAppPhoneSelection200Response>, Integer, Hash)> complete_whats_app_phone_selection_with_http_info(complete_whats_app_phone_selection_request, opts)

```ruby
begin
  # Complete WhatsApp phone number selection
  data, status_code, headers = api_instance.complete_whats_app_phone_selection_with_http_info(complete_whats_app_phone_selection_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompleteWhatsAppPhoneSelection200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->complete_whats_app_phone_selection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **complete_whats_app_phone_selection_request** | [**CompleteWhatsAppPhoneSelectionRequest**](CompleteWhatsAppPhoneSelectionRequest.md) |  |  |
| **x_connect_token** | **String** | Alternative auth for API users&#39; end customers | [optional] |

### Return type

[**CompleteWhatsAppPhoneSelection200Response**](CompleteWhatsAppPhoneSelection200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## configure_tik_tok_ads_brand_identity

> <ConfigureTikTokAdsBrandIdentity200Response> configure_tik_tok_ads_brand_identity(configure_tik_tok_ads_brand_identity_request)

Configure TikTok Ads Brand Identity

Set or update the Brand Identity (display name + avatar) for a `tiktokads` SocialAccount. TikTok requires every ad to carry an `identity_id + identity_type` pair. The Brand Identity is the CUSTOMIZED_USER alternative to attributing ads to a real @username (TT_USER). This route uploads the supplied image to TikTok, creates the identity via `/v2/identity/create/`, and caches the resulting `identity_id` on the account so subsequent `POST /v1/ads/create` calls can opt into it via `identityType: 'CUSTOMIZED_USER'`.  Configurable on every `tiktokads` account, including linked-mode ones (those with a posting account on the same profile). Configuration is idempotent and harmless when posting is also connected: the default ad-create path still prefers TT_USER, and CUSTOMIZED_USER is only used per-ad when the caller explicitly opts in.  TikTok identities are immutable post-creation. Re-saving creates a new identity on TikTok and swaps the cached id; the old identity stays orphaned on TikTok's side (harmless, no billing impact).  Alternative: pass `brandIdentity` directly on `POST /v1/ads/create` to configure on first ad creation in a single round-trip. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
configure_tik_tok_ads_brand_identity_request = Zernio::ConfigureTikTokAdsBrandIdentityRequest.new({account_id: 'account_id_example', display_name: 'display_name_example', image_url: 'image_url_example'}) # ConfigureTikTokAdsBrandIdentityRequest | 

begin
  # Configure TikTok Ads Brand Identity
  result = api_instance.configure_tik_tok_ads_brand_identity(configure_tik_tok_ads_brand_identity_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->configure_tik_tok_ads_brand_identity: #{e}"
end
```

#### Using the configure_tik_tok_ads_brand_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigureTikTokAdsBrandIdentity200Response>, Integer, Hash)> configure_tik_tok_ads_brand_identity_with_http_info(configure_tik_tok_ads_brand_identity_request)

```ruby
begin
  # Configure TikTok Ads Brand Identity
  data, status_code, headers = api_instance.configure_tik_tok_ads_brand_identity_with_http_info(configure_tik_tok_ads_brand_identity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigureTikTokAdsBrandIdentity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->configure_tik_tok_ads_brand_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configure_tik_tok_ads_brand_identity_request** | [**ConfigureTikTokAdsBrandIdentityRequest**](ConfigureTikTokAdsBrandIdentityRequest.md) |  |  |

### Return type

[**ConfigureTikTokAdsBrandIdentity200Response**](ConfigureTikTokAdsBrandIdentity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connect_ads

> <ConnectAds200Response> connect_ads(platform, profile_id, opts)

Connect ads for a platform

Unified ads connection endpoint. Creates a dedicated ads SocialAccount for the specified platform.  Same-token platforms (facebook, instagram, linkedin, pinterest): Creates an ads SocialAccount (metaads, linkedinads, pinterestads) with a copied OAuth token from the parent posting account. If the ads account already exists, returns alreadyConnected: true. No extra OAuth needed.  Separate-token platforms (tiktok, twitter): Starts the platform-specific marketing API OAuth flow and creates an ads SocialAccount (tiktokads, xads) with its own token. If the ads account already exists, returns alreadyConnected: true.   - tiktok: accountId is OPTIONAL. With accountId, the new tiktokads account links to that posting account (parentAccountId set) — Spark Ads + standalone ads using the posting TT_USER identity become available. Without accountId, ads-only mode kicks in: the new tiktokads account has parentAccountId=null and standalone ads use a synthetic CUSTOMIZED_USER (\"Brand Identity\"); Spark Ads are unavailable because TikTok requires a posting account for them. The Brand Identity is configured separately via PATCH /v1/connect/tiktok-ads (or inline on POST /v1/ads/create via the brandIdentity field).   - twitter (X Ads): accountId is REQUIRED. There's no ads-only mode — tweets need to be authored by a real X user.  Standalone platforms (googleads): Starts the Google Ads OAuth flow and creates a standalone ads SocialAccount (googleads) with no parent. If the account already exists, returns alreadyConnected: true.  Ads accounts appear as regular SocialAccount documents with ads platform values (e.g., metaads, tiktokads) in GET /v1/accounts. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
platform = 'facebook' # String | Platform to connect ads for. Only platforms with ads support are accepted.
profile_id = 'profile_id_example' # String | Your Zernio profile ID
opts = {
  account_id: 'account_id_example', # String | Existing SocialAccount ID. Required for `twitter` (X Ads). Optional for `tiktok` — omit to enter ads-only mode (no TikTok posting account linked; ad creation uses a Brand Identity instead of a TT_USER). Ignored for same-token (`facebook`, `instagram`, `linkedin`, `pinterest`) and standalone (`googleads`) platforms. 
  redirect_url: 'redirect_url_example', # String | Custom redirect URL after OAuth completes (same-token platforms only)
  headless: true, # Boolean | Enable headless mode (same-token platforms only)
  ad_account_id: 'act_1330190928038136', # String | (metaads only) Scope ad sync to a single Meta ad account. Without this param, sync covers every `act_*` the connected token can see. Pass this to limit `sync.totalAds` / `synced` and the resulting ads to one ad account. Format: `act_<digits>` (matches what `/me/adaccounts` returns). Validated against the connected token; unreachable IDs return 400. For multiple accounts use `adAccountIds` instead. 
  ad_account_ids: ['inner_example'] # Array<String> | (metaads only) Scope ad sync to multiple Meta ad accounts. Repeat the param (`?adAccountIds=act_1&adAccountIds=act_2`) or comma-separate (`?adAccountIds=act_1,act_2`). Validated against the connected token. Persisted server-side; latest call wins. Omitting both `adAccountId` and `adAccountIds` keeps any previously persisted scope unchanged. 
}

begin
  # Connect ads for a platform
  result = api_instance.connect_ads(platform, profile_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_ads: #{e}"
end
```

#### Using the connect_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectAds200Response>, Integer, Hash)> connect_ads_with_http_info(platform, profile_id, opts)

```ruby
begin
  # Connect ads for a platform
  data, status_code, headers = api_instance.connect_ads_with_http_info(platform, profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectAds200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform to connect ads for. Only platforms with ads support are accepted. |  |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **account_id** | **String** | Existing SocialAccount ID. Required for &#x60;twitter&#x60; (X Ads). Optional for &#x60;tiktok&#x60; — omit to enter ads-only mode (no TikTok posting account linked; ad creation uses a Brand Identity instead of a TT_USER). Ignored for same-token (&#x60;facebook&#x60;, &#x60;instagram&#x60;, &#x60;linkedin&#x60;, &#x60;pinterest&#x60;) and standalone (&#x60;googleads&#x60;) platforms.  | [optional] |
| **redirect_url** | **String** | Custom redirect URL after OAuth completes (same-token platforms only) | [optional] |
| **headless** | **Boolean** | Enable headless mode (same-token platforms only) | [optional][default to false] |
| **ad_account_id** | **String** | (metaads only) Scope ad sync to a single Meta ad account. Without this param, sync covers every &#x60;act_*&#x60; the connected token can see. Pass this to limit &#x60;sync.totalAds&#x60; / &#x60;synced&#x60; and the resulting ads to one ad account. Format: &#x60;act_&lt;digits&gt;&#x60; (matches what &#x60;/me/adaccounts&#x60; returns). Validated against the connected token; unreachable IDs return 400. For multiple accounts use &#x60;adAccountIds&#x60; instead.  | [optional] |
| **ad_account_ids** | [**Array&lt;String&gt;**](String.md) | (metaads only) Scope ad sync to multiple Meta ad accounts. Repeat the param (&#x60;?adAccountIds&#x3D;act_1&amp;adAccountIds&#x3D;act_2&#x60;) or comma-separate (&#x60;?adAccountIds&#x3D;act_1,act_2&#x60;). Validated against the connected token. Persisted server-side; latest call wins. Omitting both &#x60;adAccountId&#x60; and &#x60;adAccountIds&#x60; keeps any previously persisted scope unchanged.  | [optional] |

### Return type

[**ConnectAds200Response**](ConnectAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connect_bluesky_credentials

> <ConnectBlueskyCredentials200Response> connect_bluesky_credentials(connect_bluesky_credentials_request)

Connect Bluesky account

Connect a Bluesky account using identifier (handle or email) and an app password. To get your userId for the state parameter, call GET /v1/users which includes a currentUserId field. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
connect_bluesky_credentials_request = Zernio::ConnectBlueskyCredentialsRequest.new({identifier: 'identifier_example', app_password: 'app_password_example', state: '6507a1b2c3d4e5f6a7b8c9d0-6507a1b2c3d4e5f6a7b8c9d1'}) # ConnectBlueskyCredentialsRequest | 

begin
  # Connect Bluesky account
  result = api_instance.connect_bluesky_credentials(connect_bluesky_credentials_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_bluesky_credentials: #{e}"
end
```

#### Using the connect_bluesky_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectBlueskyCredentials200Response>, Integer, Hash)> connect_bluesky_credentials_with_http_info(connect_bluesky_credentials_request)

```ruby
begin
  # Connect Bluesky account
  data, status_code, headers = api_instance.connect_bluesky_credentials_with_http_info(connect_bluesky_credentials_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectBlueskyCredentials200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_bluesky_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connect_bluesky_credentials_request** | [**ConnectBlueskyCredentialsRequest**](ConnectBlueskyCredentialsRequest.md) |  |  |

### Return type

[**ConnectBlueskyCredentials200Response**](ConnectBlueskyCredentials200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connect_whats_app_credentials

> <ConnectWhatsAppCredentials200Response> connect_whats_app_credentials(connect_whats_app_credentials_request)

Connect WhatsApp via credentials

Connect a WhatsApp Business Account by providing Meta credentials directly. This is the headless alternative to the Embedded Signup browser flow.  To get the required credentials: 1. Go to Meta Business Suite (business.facebook.com) 2. Create or select a WhatsApp Business Account 3. In Business Settings > System Users, create a System User 4. Assign it the whatsapp_business_management and whatsapp_business_messaging permissions 5. Generate a permanent access token 6. Get the WABA ID from WhatsApp Manager > Account Tools > Phone Numbers 7. Get the Phone Number ID from the same page (click on the number) 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
connect_whats_app_credentials_request = Zernio::ConnectWhatsAppCredentialsRequest.new({profile_id: 'profile_id_example', access_token: 'access_token_example', waba_id: 'waba_id_example', phone_number_id: 'phone_number_id_example'}) # ConnectWhatsAppCredentialsRequest | 

begin
  # Connect WhatsApp via credentials
  result = api_instance.connect_whats_app_credentials(connect_whats_app_credentials_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_whats_app_credentials: #{e}"
end
```

#### Using the connect_whats_app_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectWhatsAppCredentials200Response>, Integer, Hash)> connect_whats_app_credentials_with_http_info(connect_whats_app_credentials_request)

```ruby
begin
  # Connect WhatsApp via credentials
  data, status_code, headers = api_instance.connect_whats_app_credentials_with_http_info(connect_whats_app_credentials_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectWhatsAppCredentials200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->connect_whats_app_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connect_whats_app_credentials_request** | [**ConnectWhatsAppCredentialsRequest**](ConnectWhatsAppCredentialsRequest.md) |  |  |

### Return type

[**ConnectWhatsAppCredentials200Response**](ConnectWhatsAppCredentials200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_connect_url

> <GetConnectUrl200Response> get_connect_url(platform, profile_id, opts)

Get OAuth connect URL

Initiate an OAuth connection flow. Returns an authUrl to redirect the user to. Standard flow: Zernio hosts the selection UI, then redirects to your redirect_url. Headless mode (headless=true): user is redirected to your redirect_url with OAuth data for custom UI. Use the platform-specific selection endpoints to complete. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
platform = 'facebook' # String | Social media platform to connect
profile_id = 'profile_id_example' # String | Your Zernio profile ID (get from /v1/profiles)
opts = {
  redirect_url: 'redirect_url_example', # String | Your custom redirect URL after connection completes. Standard mode appends ?connected={platform}&profileId=X&accountId=Y&username=Z. Headless mode appends OAuth data params for platforms requiring selection (e.g. LinkedIn orgs, Facebook pages). If no selection is needed, the account is created directly and the redirect includes accountId.
  headless: true # Boolean | When true, the user is redirected to your redirect_url with raw OAuth data (code, state) instead of Zernio's default account selection UI. Use this to build a custom connect experience.
}

begin
  # Get OAuth connect URL
  result = api_instance.get_connect_url(platform, profile_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_connect_url: #{e}"
end
```

#### Using the get_connect_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectUrl200Response>, Integer, Hash)> get_connect_url_with_http_info(platform, profile_id, opts)

```ruby
begin
  # Get OAuth connect URL
  data, status_code, headers = api_instance.get_connect_url_with_http_info(platform, profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectUrl200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_connect_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Social media platform to connect |  |
| **profile_id** | **String** | Your Zernio profile ID (get from /v1/profiles) |  |
| **redirect_url** | **String** | Your custom redirect URL after connection completes. Standard mode appends ?connected&#x3D;{platform}&amp;profileId&#x3D;X&amp;accountId&#x3D;Y&amp;username&#x3D;Z. Headless mode appends OAuth data params for platforms requiring selection (e.g. LinkedIn orgs, Facebook pages). If no selection is needed, the account is created directly and the redirect includes accountId. | [optional] |
| **headless** | **Boolean** | When true, the user is redirected to your redirect_url with raw OAuth data (code, state) instead of Zernio&#39;s default account selection UI. Use this to build a custom connect experience. | [optional][default to false] |

### Return type

[**GetConnectUrl200Response**](GetConnectUrl200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_facebook_pages

> <GetFacebookPages200Response> get_facebook_pages(account_id)

List Facebook pages

Returns all Facebook pages the connected account has access to, including the currently selected page.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List Facebook pages
  result = api_instance.get_facebook_pages(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_facebook_pages: #{e}"
end
```

#### Using the get_facebook_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFacebookPages200Response>, Integer, Hash)> get_facebook_pages_with_http_info(account_id)

```ruby
begin
  # List Facebook pages
  data, status_code, headers = api_instance.get_facebook_pages_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFacebookPages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_facebook_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetFacebookPages200Response**](GetFacebookPages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_gmb_locations

> <GetGmbLocations200Response> get_gmb_locations(account_id)

List GBP locations

Returns all Google Business Profile locations the connected account has access to, including the currently selected location.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List GBP locations
  result = api_instance.get_gmb_locations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_gmb_locations: #{e}"
end
```

#### Using the get_gmb_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGmbLocations200Response>, Integer, Hash)> get_gmb_locations_with_http_info(account_id)

```ruby
begin
  # List GBP locations
  data, status_code, headers = api_instance.get_gmb_locations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGmbLocations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_gmb_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetGmbLocations200Response**](GetGmbLocations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linked_in_organizations

> <GetLinkedInOrganizations200Response> get_linked_in_organizations(account_id)

List LinkedIn orgs

Returns LinkedIn organizations (company pages) the connected account has admin access to.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List LinkedIn orgs
  result = api_instance.get_linked_in_organizations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_linked_in_organizations: #{e}"
end
```

#### Using the get_linked_in_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinkedInOrganizations200Response>, Integer, Hash)> get_linked_in_organizations_with_http_info(account_id)

```ruby
begin
  # List LinkedIn orgs
  data, status_code, headers = api_instance.get_linked_in_organizations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinkedInOrganizations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_linked_in_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetLinkedInOrganizations200Response**](GetLinkedInOrganizations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pending_o_auth_data

> <GetPendingOAuthData200Response> get_pending_o_auth_data(token)

Get pending OAuth data

Fetch pending OAuth data for headless mode using the pendingDataToken from the redirect URL.  **Scope**: This endpoint is used only for LinkedIn organizations and Snapchat profiles, where the selection list is too large to fit in URL params. WhatsApp, Facebook, Pinterest, Google Business and other platforms pass selection state directly via URL query params on the redirect (`profileId`, `tempToken`, `step`), no pending record is created, so this endpoint will return 404 for those flows. Use the platform-specific selection endpoint instead (e.g. `/v1/connect/whatsapp/select-phone-number`).  Token is one-time use and expires after 10 minutes. No authentication required. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
token = 'token_example' # String | The pending data token from the OAuth redirect URL (pendingDataToken parameter)

begin
  # Get pending OAuth data
  result = api_instance.get_pending_o_auth_data(token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_pending_o_auth_data: #{e}"
end
```

#### Using the get_pending_o_auth_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPendingOAuthData200Response>, Integer, Hash)> get_pending_o_auth_data_with_http_info(token)

```ruby
begin
  # Get pending OAuth data
  data, status_code, headers = api_instance.get_pending_o_auth_data_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPendingOAuthData200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_pending_o_auth_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The pending data token from the OAuth redirect URL (pendingDataToken parameter) |  |

### Return type

[**GetPendingOAuthData200Response**](GetPendingOAuthData200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pinterest_boards

> <GetPinterestBoards200Response> get_pinterest_boards(account_id)

List Pinterest boards

Returns the boards available for a connected Pinterest account. Use this to get a board ID when creating a Pinterest post.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List Pinterest boards
  result = api_instance.get_pinterest_boards(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_pinterest_boards: #{e}"
end
```

#### Using the get_pinterest_boards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPinterestBoards200Response>, Integer, Hash)> get_pinterest_boards_with_http_info(account_id)

```ruby
begin
  # List Pinterest boards
  data, status_code, headers = api_instance.get_pinterest_boards_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPinterestBoards200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_pinterest_boards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetPinterestBoards200Response**](GetPinterestBoards200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reddit_flairs

> <GetRedditFlairs200Response> get_reddit_flairs(account_id, subreddit)

List subreddit flairs

Returns available post flairs for a subreddit. Some subreddits require a flair when posting.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
subreddit = 'subreddit_example' # String | Subreddit name (without \"r/\" prefix) to fetch flairs for

begin
  # List subreddit flairs
  result = api_instance.get_reddit_flairs(account_id, subreddit)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_reddit_flairs: #{e}"
end
```

#### Using the get_reddit_flairs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRedditFlairs200Response>, Integer, Hash)> get_reddit_flairs_with_http_info(account_id, subreddit)

```ruby
begin
  # List subreddit flairs
  data, status_code, headers = api_instance.get_reddit_flairs_with_http_info(account_id, subreddit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRedditFlairs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_reddit_flairs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **subreddit** | **String** | Subreddit name (without \&quot;r/\&quot; prefix) to fetch flairs for |  |

### Return type

[**GetRedditFlairs200Response**](GetRedditFlairs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reddit_subreddits

> <GetRedditSubreddits200Response> get_reddit_subreddits(account_id)

List Reddit subreddits

Returns the subreddits the connected Reddit account can post to. Use this to get a subreddit name when creating a Reddit post.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List Reddit subreddits
  result = api_instance.get_reddit_subreddits(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_reddit_subreddits: #{e}"
end
```

#### Using the get_reddit_subreddits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRedditSubreddits200Response>, Integer, Hash)> get_reddit_subreddits_with_http_info(account_id)

```ruby
begin
  # List Reddit subreddits
  data, status_code, headers = api_instance.get_reddit_subreddits_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRedditSubreddits200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_reddit_subreddits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetRedditSubreddits200Response**](GetRedditSubreddits200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_telegram_connect_status

> <GetTelegramConnectStatus200Response> get_telegram_connect_status(profile_id)

Generate Telegram code

Generate an access code (valid 15 minutes) for connecting a Telegram channel or group. Add the bot as admin, then send the code + @yourchannel to the bot. Poll PATCH /v1/connect/telegram to check status.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
profile_id = 'profile_id_example' # String | The profile ID to connect the Telegram account to

begin
  # Generate Telegram code
  result = api_instance.get_telegram_connect_status(profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_telegram_connect_status: #{e}"
end
```

#### Using the get_telegram_connect_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTelegramConnectStatus200Response>, Integer, Hash)> get_telegram_connect_status_with_http_info(profile_id)

```ruby
begin
  # Generate Telegram code
  data, status_code, headers = api_instance.get_telegram_connect_status_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTelegramConnectStatus200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_telegram_connect_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile ID to connect the Telegram account to |  |

### Return type

[**GetTelegramConnectStatus200Response**](GetTelegramConnectStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_youtube_playlists

> <GetYoutubePlaylists200Response> get_youtube_playlists(account_id)

List YouTube playlists

Returns the playlists available for a connected YouTube account. Use this to get a playlist ID when creating a YouTube post with the playlistId field.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 

begin
  # List YouTube playlists
  result = api_instance.get_youtube_playlists(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_youtube_playlists: #{e}"
end
```

#### Using the get_youtube_playlists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetYoutubePlaylists200Response>, Integer, Hash)> get_youtube_playlists_with_http_info(account_id)

```ruby
begin
  # List YouTube playlists
  data, status_code, headers = api_instance.get_youtube_playlists_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetYoutubePlaylists200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->get_youtube_playlists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetYoutubePlaylists200Response**](GetYoutubePlaylists200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## handle_o_auth_callback

> handle_o_auth_callback(platform, handle_o_auth_callback_request)

Complete OAuth callback

Exchange the OAuth authorization code for tokens and connect the account to the specified profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
platform = 'platform_example' # String | 
handle_o_auth_callback_request = Zernio::HandleOAuthCallbackRequest.new({code: 'code_example', state: 'state_example', profile_id: 'profile_id_example'}) # HandleOAuthCallbackRequest | 

begin
  # Complete OAuth callback
  api_instance.handle_o_auth_callback(platform, handle_o_auth_callback_request)
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->handle_o_auth_callback: #{e}"
end
```

#### Using the handle_o_auth_callback_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> handle_o_auth_callback_with_http_info(platform, handle_o_auth_callback_request)

```ruby
begin
  # Complete OAuth callback
  data, status_code, headers = api_instance.handle_o_auth_callback_with_http_info(platform, handle_o_auth_callback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->handle_o_auth_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **handle_o_auth_callback_request** | [**HandleOAuthCallbackRequest**](HandleOAuthCallbackRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## initiate_telegram_connect

> <InitiateTelegramConnect200Response> initiate_telegram_connect(initiate_telegram_connect_request)

Connect Telegram directly

Connect a Telegram channel/group directly using the chat ID. Alternative to the access code flow. The bot must already be an admin in the channel/group.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
initiate_telegram_connect_request = Zernio::InitiateTelegramConnectRequest.new({chat_id: 'chat_id_example', profile_id: 'profile_id_example'}) # InitiateTelegramConnectRequest | 

begin
  # Connect Telegram directly
  result = api_instance.initiate_telegram_connect(initiate_telegram_connect_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->initiate_telegram_connect: #{e}"
end
```

#### Using the initiate_telegram_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InitiateTelegramConnect200Response>, Integer, Hash)> initiate_telegram_connect_with_http_info(initiate_telegram_connect_request)

```ruby
begin
  # Connect Telegram directly
  data, status_code, headers = api_instance.initiate_telegram_connect_with_http_info(initiate_telegram_connect_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InitiateTelegramConnect200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->initiate_telegram_connect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **initiate_telegram_connect_request** | [**InitiateTelegramConnectRequest**](InitiateTelegramConnectRequest.md) |  |  |

### Return type

[**InitiateTelegramConnect200Response**](InitiateTelegramConnect200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_facebook_pages

> <ListFacebookPages200Response> list_facebook_pages(profile_id, temp_token)

List Facebook pages

Returns the list of Facebook Pages the user can manage after OAuth. Extract tempToken and userProfile from the OAuth redirect params and pass them here. Use the X-Connect-Token header if connecting via API key.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure API key authorization: connectToken
  config.api_key['X-Connect-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Connect-Token'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
profile_id = 'profile_id_example' # String | Profile ID from your connection flow
temp_token = 'temp_token_example' # String | Temporary Facebook access token from the OAuth callback redirect

begin
  # List Facebook pages
  result = api_instance.list_facebook_pages(profile_id, temp_token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_facebook_pages: #{e}"
end
```

#### Using the list_facebook_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFacebookPages200Response>, Integer, Hash)> list_facebook_pages_with_http_info(profile_id, temp_token)

```ruby
begin
  # List Facebook pages
  data, status_code, headers = api_instance.list_facebook_pages_with_http_info(profile_id, temp_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFacebookPages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_facebook_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your connection flow |  |
| **temp_token** | **String** | Temporary Facebook access token from the OAuth callback redirect |  |

### Return type

[**ListFacebookPages200Response**](ListFacebookPages200Response.md)

### Authorization

[connectToken](../README.md#connectToken), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_google_business_locations

> <ListGoogleBusinessLocations200Response> list_google_business_locations(opts)

List GBP locations

For headless flows. Returns the list of GBP locations the user can manage. Use pendingDataToken (from the OAuth callback redirect) to list locations without consuming the token, so it remains available for select-location. Use X-Connect-Token header if connecting via API key. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure API key authorization: connectToken
  config.api_key['X-Connect-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Connect-Token'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
opts = {
  profile_id: 'profile_id_example', # String | Profile ID from your connection flow. Required for auth validation when provided.
  pending_data_token: 'pending_data_token_example', # String | Token from the OAuth callback redirect. Preferred over tempToken because it preserves server-side token storage. One of pendingDataToken or tempToken is required.
  temp_token: 'temp_token_example' # String | Legacy. Direct Google access token. Use pendingDataToken instead when available.
}

begin
  # List GBP locations
  result = api_instance.list_google_business_locations(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_google_business_locations: #{e}"
end
```

#### Using the list_google_business_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGoogleBusinessLocations200Response>, Integer, Hash)> list_google_business_locations_with_http_info(opts)

```ruby
begin
  # List GBP locations
  data, status_code, headers = api_instance.list_google_business_locations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGoogleBusinessLocations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_google_business_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your connection flow. Required for auth validation when provided. | [optional] |
| **pending_data_token** | **String** | Token from the OAuth callback redirect. Preferred over tempToken because it preserves server-side token storage. One of pendingDataToken or tempToken is required. | [optional] |
| **temp_token** | **String** | Legacy. Direct Google access token. Use pendingDataToken instead when available. | [optional] |

### Return type

[**ListGoogleBusinessLocations200Response**](ListGoogleBusinessLocations200Response.md)

### Authorization

[connectToken](../README.md#connectToken), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_linked_in_organizations

> <ListLinkedInOrganizations200Response> list_linked_in_organizations(temp_token, org_ids)

List LinkedIn orgs

Fetch full LinkedIn organization details (logos, vanity names, websites) for custom UI. No authentication required, just the tempToken from OAuth.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
temp_token = 'temp_token_example' # String | The temporary LinkedIn access token from the OAuth redirect
org_ids = '12345678,87654321,11111111' # String | Comma-separated list of organization IDs to fetch details for (max 100)

begin
  # List LinkedIn orgs
  result = api_instance.list_linked_in_organizations(temp_token, org_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_linked_in_organizations: #{e}"
end
```

#### Using the list_linked_in_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLinkedInOrganizations200Response>, Integer, Hash)> list_linked_in_organizations_with_http_info(temp_token, org_ids)

```ruby
begin
  # List LinkedIn orgs
  data, status_code, headers = api_instance.list_linked_in_organizations_with_http_info(temp_token, org_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLinkedInOrganizations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_linked_in_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **temp_token** | **String** | The temporary LinkedIn access token from the OAuth redirect |  |
| **org_ids** | **String** | Comma-separated list of organization IDs to fetch details for (max 100) |  |

### Return type

[**ListLinkedInOrganizations200Response**](ListLinkedInOrganizations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pinterest_boards_for_selection

> <ListPinterestBoardsForSelection200Response> list_pinterest_boards_for_selection(x_connect_token, profile_id, temp_token)

List Pinterest boards

For headless flows. Returns Pinterest boards the user can post to. Use X-Connect-Token from the redirect URL.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
x_connect_token = 'x_connect_token_example' # String | Short-lived connect token from the OAuth redirect
profile_id = 'profile_id_example' # String | Your Zernio profile ID
temp_token = 'temp_token_example' # String | Temporary Pinterest access token from the OAuth callback redirect

begin
  # List Pinterest boards
  result = api_instance.list_pinterest_boards_for_selection(x_connect_token, profile_id, temp_token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_pinterest_boards_for_selection: #{e}"
end
```

#### Using the list_pinterest_boards_for_selection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPinterestBoardsForSelection200Response>, Integer, Hash)> list_pinterest_boards_for_selection_with_http_info(x_connect_token, profile_id, temp_token)

```ruby
begin
  # List Pinterest boards
  data, status_code, headers = api_instance.list_pinterest_boards_for_selection_with_http_info(x_connect_token, profile_id, temp_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPinterestBoardsForSelection200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_pinterest_boards_for_selection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connect_token** | **String** | Short-lived connect token from the OAuth redirect |  |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **temp_token** | **String** | Temporary Pinterest access token from the OAuth callback redirect |  |

### Return type

[**ListPinterestBoardsForSelection200Response**](ListPinterestBoardsForSelection200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_snapchat_profiles

> <ListSnapchatProfiles200Response> list_snapchat_profiles(x_connect_token, profile_id, temp_token)

List Snapchat profiles

For headless flows. Returns Snapchat Public Profiles the user can post to. Use X-Connect-Token from the redirect URL.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
x_connect_token = 'x_connect_token_example' # String | Short-lived connect token from the OAuth redirect
profile_id = 'profile_id_example' # String | Your Zernio profile ID
temp_token = 'temp_token_example' # String | Temporary Snapchat access token from the OAuth callback redirect

begin
  # List Snapchat profiles
  result = api_instance.list_snapchat_profiles(x_connect_token, profile_id, temp_token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_snapchat_profiles: #{e}"
end
```

#### Using the list_snapchat_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSnapchatProfiles200Response>, Integer, Hash)> list_snapchat_profiles_with_http_info(x_connect_token, profile_id, temp_token)

```ruby
begin
  # List Snapchat profiles
  data, status_code, headers = api_instance.list_snapchat_profiles_with_http_info(x_connect_token, profile_id, temp_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSnapchatProfiles200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_snapchat_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connect_token** | **String** | Short-lived connect token from the OAuth redirect |  |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **temp_token** | **String** | Temporary Snapchat access token from the OAuth callback redirect |  |

### Return type

[**ListSnapchatProfiles200Response**](ListSnapchatProfiles200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_phone_numbers

> <ListWhatsAppPhoneNumbers200Response> list_whats_app_phone_numbers(profile_id, temp_token, opts)

List WhatsApp phone numbers for selection

Fetch the WhatsApp phone numbers available across the user's WhatsApp Business Accounts (WABAs) after a headless OAuth flow.  WhatsApp OAuth grants access at the WABA level. When a connected WABA has 2 or more phone numbers, you must call this endpoint to list them and then `POST /v1/connect/whatsapp/select-phone-number` to bind one to the Zernio profile. Single-phone WABAs auto-complete during the OAuth callback and never reach this endpoint.  Use the `profileId` and `tempToken` returned in the headless redirect (`step=select_phone_number`).  Alternative: if you already know `wabaId` and `phoneNumberId` (e.g. from Meta Business Suite), use `connectWhatsAppCredentials` instead, which skips this two-step flow. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
profile_id = 'profile_id_example' # String | The Zernio profile ID from the headless redirect
temp_token = 'temp_token_example' # String | The temporary access token from the headless redirect
opts = {
  x_connect_token: 'x_connect_token_example' # String | Alternative auth for API users' end customers (used when the bearer token is scoped to a different user)
}

begin
  # List WhatsApp phone numbers for selection
  result = api_instance.list_whats_app_phone_numbers(profile_id, temp_token, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_whats_app_phone_numbers: #{e}"
end
```

#### Using the list_whats_app_phone_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppPhoneNumbers200Response>, Integer, Hash)> list_whats_app_phone_numbers_with_http_info(profile_id, temp_token, opts)

```ruby
begin
  # List WhatsApp phone numbers for selection
  data, status_code, headers = api_instance.list_whats_app_phone_numbers_with_http_info(profile_id, temp_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppPhoneNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->list_whats_app_phone_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The Zernio profile ID from the headless redirect |  |
| **temp_token** | **String** | The temporary access token from the headless redirect |  |
| **x_connect_token** | **String** | Alternative auth for API users&#39; end customers (used when the bearer token is scoped to a different user) | [optional] |

### Return type

[**ListWhatsAppPhoneNumbers200Response**](ListWhatsAppPhoneNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## select_facebook_page

> <SelectFacebookPage200Response> select_facebook_page(select_facebook_page_request)

Select Facebook page

Complete the headless flow by saving the user's selected Facebook page. Pass the userProfile from the OAuth redirect and use X-Connect-Token if connecting via API key.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure API key authorization: connectToken
  config.api_key['X-Connect-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Connect-Token'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
select_facebook_page_request = Zernio::SelectFacebookPageRequest.new({profile_id: 'profile_id_example', page_id: 'page_id_example', temp_token: 'temp_token_example', user_profile: Zernio::SelectFacebookPageRequestUserProfile.new}) # SelectFacebookPageRequest | 

begin
  # Select Facebook page
  result = api_instance.select_facebook_page(select_facebook_page_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_facebook_page: #{e}"
end
```

#### Using the select_facebook_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelectFacebookPage200Response>, Integer, Hash)> select_facebook_page_with_http_info(select_facebook_page_request)

```ruby
begin
  # Select Facebook page
  data, status_code, headers = api_instance.select_facebook_page_with_http_info(select_facebook_page_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelectFacebookPage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_facebook_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **select_facebook_page_request** | [**SelectFacebookPageRequest**](SelectFacebookPageRequest.md) |  |  |

### Return type

[**SelectFacebookPage200Response**](SelectFacebookPage200Response.md)

### Authorization

[connectToken](../README.md#connectToken), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## select_google_business_location

> <SelectGoogleBusinessLocation200Response> select_google_business_location(select_google_business_location_request)

Select GBP location

Complete the headless GBP flow by saving the user's selected location. The pendingDataToken is returned in your redirect URL after OAuth completes (step=select_location). Tokens and profile data are stored server-side, so only the pendingDataToken is needed here. Use X-Connect-Token header if connecting via API key. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure API key authorization: connectToken
  config.api_key['X-Connect-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Connect-Token'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
select_google_business_location_request = Zernio::SelectGoogleBusinessLocationRequest.new({profile_id: 'profile_id_example', location_id: 'location_id_example', pending_data_token: 'pending_data_token_example'}) # SelectGoogleBusinessLocationRequest | 

begin
  # Select GBP location
  result = api_instance.select_google_business_location(select_google_business_location_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_google_business_location: #{e}"
end
```

#### Using the select_google_business_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelectGoogleBusinessLocation200Response>, Integer, Hash)> select_google_business_location_with_http_info(select_google_business_location_request)

```ruby
begin
  # Select GBP location
  data, status_code, headers = api_instance.select_google_business_location_with_http_info(select_google_business_location_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelectGoogleBusinessLocation200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_google_business_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **select_google_business_location_request** | [**SelectGoogleBusinessLocationRequest**](SelectGoogleBusinessLocationRequest.md) |  |  |

### Return type

[**SelectGoogleBusinessLocation200Response**](SelectGoogleBusinessLocation200Response.md)

### Authorization

[connectToken](../README.md#connectToken), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## select_linked_in_organization

> <SelectLinkedInOrganization200Response> select_linked_in_organization(select_linked_in_organization_request)

Select LinkedIn org

Complete the LinkedIn connection flow. Set accountType to \"personal\" or \"organization\" to connect as a company page. Use X-Connect-Token if connecting via API key.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
select_linked_in_organization_request = Zernio::SelectLinkedInOrganizationRequest.new({profile_id: 'profile_id_example', temp_token: 'temp_token_example', user_profile: 3.56, account_type: 'personal'}) # SelectLinkedInOrganizationRequest | 

begin
  # Select LinkedIn org
  result = api_instance.select_linked_in_organization(select_linked_in_organization_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_linked_in_organization: #{e}"
end
```

#### Using the select_linked_in_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelectLinkedInOrganization200Response>, Integer, Hash)> select_linked_in_organization_with_http_info(select_linked_in_organization_request)

```ruby
begin
  # Select LinkedIn org
  data, status_code, headers = api_instance.select_linked_in_organization_with_http_info(select_linked_in_organization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelectLinkedInOrganization200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_linked_in_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **select_linked_in_organization_request** | [**SelectLinkedInOrganizationRequest**](SelectLinkedInOrganizationRequest.md) |  |  |

### Return type

[**SelectLinkedInOrganization200Response**](SelectLinkedInOrganization200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## select_pinterest_board

> <SelectPinterestBoard200Response> select_pinterest_board(select_pinterest_board_request)

Select Pinterest board

Complete the Pinterest connection flow. After OAuth, use this endpoint to save the selected board and complete the account connection. Use the X-Connect-Token header if you initiated the connection via API key. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
select_pinterest_board_request = Zernio::SelectPinterestBoardRequest.new({profile_id: 'profile_id_example', board_id: 'board_id_example', temp_token: 'temp_token_example'}) # SelectPinterestBoardRequest | 

begin
  # Select Pinterest board
  result = api_instance.select_pinterest_board(select_pinterest_board_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_pinterest_board: #{e}"
end
```

#### Using the select_pinterest_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelectPinterestBoard200Response>, Integer, Hash)> select_pinterest_board_with_http_info(select_pinterest_board_request)

```ruby
begin
  # Select Pinterest board
  data, status_code, headers = api_instance.select_pinterest_board_with_http_info(select_pinterest_board_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelectPinterestBoard200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_pinterest_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **select_pinterest_board_request** | [**SelectPinterestBoardRequest**](SelectPinterestBoardRequest.md) |  |  |

### Return type

[**SelectPinterestBoard200Response**](SelectPinterestBoard200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## select_snapchat_profile

> <SelectSnapchatProfile200Response> select_snapchat_profile(select_snapchat_profile_request, opts)

Select Snapchat profile

Complete the Snapchat connection flow by saving the selected Public Profile. Snapchat requires a Public Profile to publish content. Use X-Connect-Token if connecting via API key.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
select_snapchat_profile_request = Zernio::SelectSnapchatProfileRequest.new({profile_id: 'profile_id_example', selected_public_profile: Zernio::SelectSnapchatProfileRequestSelectedPublicProfile.new({id: 'id_example', display_name: 'display_name_example'}), temp_token: 'temp_token_example', user_profile: 3.56}) # SelectSnapchatProfileRequest | 
opts = {
  x_connect_token: 'x_connect_token_example' # String | Short-lived connect token from the OAuth redirect (for API users)
}

begin
  # Select Snapchat profile
  result = api_instance.select_snapchat_profile(select_snapchat_profile_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_snapchat_profile: #{e}"
end
```

#### Using the select_snapchat_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelectSnapchatProfile200Response>, Integer, Hash)> select_snapchat_profile_with_http_info(select_snapchat_profile_request, opts)

```ruby
begin
  # Select Snapchat profile
  data, status_code, headers = api_instance.select_snapchat_profile_with_http_info(select_snapchat_profile_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelectSnapchatProfile200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->select_snapchat_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **select_snapchat_profile_request** | [**SelectSnapchatProfileRequest**](SelectSnapchatProfileRequest.md) |  |  |
| **x_connect_token** | **String** | Short-lived connect token from the OAuth redirect (for API users) | [optional] |

### Return type

[**SelectSnapchatProfile200Response**](SelectSnapchatProfile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_facebook_page

> <UpdateFacebookPage200Response> update_facebook_page(account_id, update_facebook_page_request)

Update Facebook page

Switch which Facebook Page is active for a connected account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_facebook_page_request = Zernio::UpdateFacebookPageRequest.new({selected_page_id: 'selected_page_id_example'}) # UpdateFacebookPageRequest | 

begin
  # Update Facebook page
  result = api_instance.update_facebook_page(account_id, update_facebook_page_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_facebook_page: #{e}"
end
```

#### Using the update_facebook_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFacebookPage200Response>, Integer, Hash)> update_facebook_page_with_http_info(account_id, update_facebook_page_request)

```ruby
begin
  # Update Facebook page
  data, status_code, headers = api_instance.update_facebook_page_with_http_info(account_id, update_facebook_page_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFacebookPage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_facebook_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_facebook_page_request** | [**UpdateFacebookPageRequest**](UpdateFacebookPageRequest.md) |  |  |

### Return type

[**UpdateFacebookPage200Response**](UpdateFacebookPage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_gmb_location

> <UpdateGmbLocation200Response> update_gmb_location(account_id, update_gmb_location_request)

Update GBP location

Switch which GBP location is active for a connected account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_gmb_location_request = Zernio::UpdateGmbLocationRequest.new({selected_location_id: 'selected_location_id_example'}) # UpdateGmbLocationRequest | 

begin
  # Update GBP location
  result = api_instance.update_gmb_location(account_id, update_gmb_location_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_gmb_location: #{e}"
end
```

#### Using the update_gmb_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGmbLocation200Response>, Integer, Hash)> update_gmb_location_with_http_info(account_id, update_gmb_location_request)

```ruby
begin
  # Update GBP location
  data, status_code, headers = api_instance.update_gmb_location_with_http_info(account_id, update_gmb_location_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGmbLocation200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_gmb_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_gmb_location_request** | [**UpdateGmbLocationRequest**](UpdateGmbLocationRequest.md) |  |  |

### Return type

[**UpdateGmbLocation200Response**](UpdateGmbLocation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_linked_in_organization

> <ConnectBlueskyCredentials200Response> update_linked_in_organization(account_id, update_linked_in_organization_request)

Switch LinkedIn account type

Switch a LinkedIn account between personal profile and organization (company page) posting.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_linked_in_organization_request = Zernio::UpdateLinkedInOrganizationRequest.new({account_type: 'personal'}) # UpdateLinkedInOrganizationRequest | 

begin
  # Switch LinkedIn account type
  result = api_instance.update_linked_in_organization(account_id, update_linked_in_organization_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_linked_in_organization: #{e}"
end
```

#### Using the update_linked_in_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectBlueskyCredentials200Response>, Integer, Hash)> update_linked_in_organization_with_http_info(account_id, update_linked_in_organization_request)

```ruby
begin
  # Switch LinkedIn account type
  data, status_code, headers = api_instance.update_linked_in_organization_with_http_info(account_id, update_linked_in_organization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectBlueskyCredentials200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_linked_in_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_linked_in_organization_request** | [**UpdateLinkedInOrganizationRequest**](UpdateLinkedInOrganizationRequest.md) |  |  |

### Return type

[**ConnectBlueskyCredentials200Response**](ConnectBlueskyCredentials200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pinterest_boards

> <ConnectBlueskyCredentials200Response> update_pinterest_boards(account_id, update_pinterest_boards_request)

Set default Pinterest board

Sets the default board used when publishing pins for this account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_pinterest_boards_request = Zernio::UpdatePinterestBoardsRequest.new({default_board_id: 'default_board_id_example'}) # UpdatePinterestBoardsRequest | 

begin
  # Set default Pinterest board
  result = api_instance.update_pinterest_boards(account_id, update_pinterest_boards_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_pinterest_boards: #{e}"
end
```

#### Using the update_pinterest_boards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectBlueskyCredentials200Response>, Integer, Hash)> update_pinterest_boards_with_http_info(account_id, update_pinterest_boards_request)

```ruby
begin
  # Set default Pinterest board
  data, status_code, headers = api_instance.update_pinterest_boards_with_http_info(account_id, update_pinterest_boards_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectBlueskyCredentials200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_pinterest_boards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_pinterest_boards_request** | [**UpdatePinterestBoardsRequest**](UpdatePinterestBoardsRequest.md) |  |  |

### Return type

[**ConnectBlueskyCredentials200Response**](ConnectBlueskyCredentials200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reddit_subreddits

> <UpdateYoutubeDefaultPlaylist200Response> update_reddit_subreddits(account_id, update_reddit_subreddits_request)

Set default subreddit

Sets the default subreddit used when publishing posts for this Reddit account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_reddit_subreddits_request = Zernio::UpdateRedditSubredditsRequest.new({default_subreddit: 'default_subreddit_example'}) # UpdateRedditSubredditsRequest | 

begin
  # Set default subreddit
  result = api_instance.update_reddit_subreddits(account_id, update_reddit_subreddits_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_reddit_subreddits: #{e}"
end
```

#### Using the update_reddit_subreddits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> update_reddit_subreddits_with_http_info(account_id, update_reddit_subreddits_request)

```ruby
begin
  # Set default subreddit
  data, status_code, headers = api_instance.update_reddit_subreddits_with_http_info(account_id, update_reddit_subreddits_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_reddit_subreddits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_reddit_subreddits_request** | [**UpdateRedditSubredditsRequest**](UpdateRedditSubredditsRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_youtube_default_playlist

> <UpdateYoutubeDefaultPlaylist200Response> update_youtube_default_playlist(account_id, update_youtube_default_playlist_request)

Set default YouTube playlist

Sets the default playlist used when publishing videos for this account. When a post does not specify a playlistId, the default playlist is not automatically used (it is stored for client-side convenience).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectApi.new
account_id = 'account_id_example' # String | 
update_youtube_default_playlist_request = Zernio::UpdateYoutubeDefaultPlaylistRequest.new({default_playlist_id: 'default_playlist_id_example'}) # UpdateYoutubeDefaultPlaylistRequest | 

begin
  # Set default YouTube playlist
  result = api_instance.update_youtube_default_playlist(account_id, update_youtube_default_playlist_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_youtube_default_playlist: #{e}"
end
```

#### Using the update_youtube_default_playlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> update_youtube_default_playlist_with_http_info(account_id, update_youtube_default_playlist_request)

```ruby
begin
  # Set default YouTube playlist
  data, status_code, headers = api_instance.update_youtube_default_playlist_with_http_info(account_id, update_youtube_default_playlist_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectApi->update_youtube_default_playlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_youtube_default_playlist_request** | [**UpdateYoutubeDefaultPlaylistRequest**](UpdateYoutubeDefaultPlaylistRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

