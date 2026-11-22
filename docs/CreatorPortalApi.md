# Zernio::CreatorPortalApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_creator_payout_login**](CreatorPortalApi.md#create_creator_payout_login) | **POST** /public/creator-campaigns/{token}/payout-login | Open the creator&#39;s Stripe dashboard |
| [**get_creator_payout_statement**](CreatorPortalApi.md#get_creator_payout_statement) | **GET** /public/creator-campaigns/{token}/payouts/{transferId}/statement | Download a payout statement |
| [**get_creator_payouts**](CreatorPortalApi.md#get_creator_payouts) | **GET** /public/creator-campaigns/{token}/payouts | List a creator&#39;s earnings history |
| [**get_creator_portal**](CreatorPortalApi.md#get_creator_portal) | **GET** /public/creator-campaigns/{token} | Read a creator invite or participant page |
| [**join_creator_campaign**](CreatorPortalApi.md#join_creator_campaign) | **POST** /public/creator-campaigns/{token} | Join a campaign |
| [**presign_creator_draft_upload**](CreatorPortalApi.md#presign_creator_draft_upload) | **POST** /public/creator-campaigns/{token}/drafts/upload | Get an upload URL for a draft |
| [**recover_creator_portal_links**](CreatorPortalApi.md#recover_creator_portal_links) | **POST** /public/creator-campaigns/recover-link | Email a creator their campaign links |
| [**remove_creator_account**](CreatorPortalApi.md#remove_creator_account) | **DELETE** /public/creator-campaigns/{token}/accounts/{accountId} | Remove a connected account |
| [**request_creator_sample**](CreatorPortalApi.md#request_creator_sample) | **POST** /public/creator-campaigns/{token}/samples | Request a product sample |
| [**set_creator_spark_code**](CreatorPortalApi.md#set_creator_spark_code) | **PUT** /public/creator-campaigns/{token}/submissions/{submissionId}/spark-code | Set a post&#39;s Spark code |
| [**start_creator_connect**](CreatorPortalApi.md#start_creator_connect) | **POST** /public/creator-campaigns/{token}/connect | Start connecting a creator account |
| [**start_creator_payouts**](CreatorPortalApi.md#start_creator_payouts) | **POST** /public/creator-campaigns/{token}/payouts | Start payout onboarding |
| [**submit_creator_draft**](CreatorPortalApi.md#submit_creator_draft) | **POST** /public/creator-campaigns/{token}/drafts | Submit a draft for review |
| [**submit_creator_post**](CreatorPortalApi.md#submit_creator_post) | **POST** /public/creator-campaigns/{token}/submissions | Submit a post |


## create_creator_payout_login

> <CreateCreatorPayoutLogin200Response> create_creator_payout_login(token)

Open the creator's Stripe dashboard

Returns a one-time link into the creator's Stripe Express dashboard, where they change bank details and see each payout. Only after the creator submitted their payout details. About 20 attempts per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.

begin
  # Open the creator's Stripe dashboard
  result = api_instance.create_creator_payout_login(token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->create_creator_payout_login: #{e}"
end
```

#### Using the create_creator_payout_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorPayoutLogin200Response>, Integer, Hash)> create_creator_payout_login_with_http_info(token)

```ruby
begin
  # Open the creator's Stripe dashboard
  data, status_code, headers = api_instance.create_creator_payout_login_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorPayoutLogin200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->create_creator_payout_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |

### Return type

[**CreateCreatorPayoutLogin200Response**](CreateCreatorPayoutLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_payout_statement

> File get_creator_payout_statement(token, transfer_id)

Download a payout statement

A PDF statement of one paid payout to this creator: who paid, the campaign, the date, the amount and the Stripe transfer id. It is a statement of a payment, not a tax invoice.  Only for a paid payout of this participant; anything else answers 404.  About 60 downloads per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
transfer_id = 'transfer_id_example' # String | 

begin
  # Download a payout statement
  result = api_instance.get_creator_payout_statement(token, transfer_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_payout_statement: #{e}"
end
```

#### Using the get_creator_payout_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_creator_payout_statement_with_http_info(token, transfer_id)

```ruby
begin
  # Download a payout statement
  data, status_code, headers = api_instance.get_creator_payout_statement_with_http_info(token, transfer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_payout_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **transfer_id** | **String** |  |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_creator_payouts

> <GetCreatorPayouts200Response> get_creator_payouts(token, opts)

List a creator's earnings history

The participant's ledger entries, newest first, with the bucket each one moved money from and to (`accruing`, `owed`, `payable`, `settling`, `settled`; null for the other side), plus the payout setup. Never cached. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
opts = {
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List a creator's earnings history
  result = api_instance.get_creator_payouts(token, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_payouts: #{e}"
end
```

#### Using the get_creator_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorPayouts200Response>, Integer, Hash)> get_creator_payouts_with_http_info(token, opts)

```ruby
begin
  # List a creator's earnings history
  data, status_code, headers = api_instance.get_creator_payouts_with_http_info(token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorPayouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**GetCreatorPayouts200Response**](GetCreatorPayouts200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_portal

> <GetCreatorPortal200Response> get_creator_portal(token)

Read a creator invite or participant page

What a creator sees behind a campaign link, with no API key. Never cached.  `token` is one of:  - An open invite token (from `POST /v1/creator-campaigns/{campaignId}/invite-link`): answers `kind: invite` with the campaign only. - A participant token (from an invite or a join): answers `kind: participant` with the creator's connected accounts, latest 100 submissions, draft versions, sample requests, earnings and payout setup. A creator held for approval reads it with `participant.status` `pending` (or `denied` once turned away).  Reading a participant page also re-checks the creator's connected accounts. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.

begin
  # Read a creator invite or participant page
  result = api_instance.get_creator_portal(token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_portal: #{e}"
end
```

#### Using the get_creator_portal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreatorPortal200Response>, Integer, Hash)> get_creator_portal_with_http_info(token)

```ruby
begin
  # Read a creator invite or participant page
  data, status_code, headers = api_instance.get_creator_portal_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreatorPortal200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->get_creator_portal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |

### Return type

[**GetCreatorPortal200Response**](GetCreatorPortal200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## join_creator_campaign

> <JoinCreatorCampaign201Response> join_creator_campaign(token, opts)

Join a campaign

Accepts a participant invite, or joins through an open invite link.  - Participant token: the body is ignored and the invite is accepted. - Open invite token: a new participant is created from `displayName` (required) and `email` (optional), and a fresh participant token comes back. Keep it: it is the creator's only key to their page. - On a campaign with `joinApproval: manual`, an open-link joiner lands `pending` and `campaign_participant.pending` fires instead of `campaign_participant.joined`. A pending creator holds no place under `caps.maxParticipants` (the limit is checked when the operator approves them) and cannot submit posts, drafts or sample requests until approved. Personal invites always get straight in.  Open-link joins are limited to about 20 per IP address and 60 per link every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
opts = {
  join_creator_campaign_request: Zernio::JoinCreatorCampaignRequest.new # JoinCreatorCampaignRequest | 
}

begin
  # Join a campaign
  result = api_instance.join_creator_campaign(token, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->join_creator_campaign: #{e}"
end
```

#### Using the join_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JoinCreatorCampaign201Response>, Integer, Hash)> join_creator_campaign_with_http_info(token, opts)

```ruby
begin
  # Join a campaign
  data, status_code, headers = api_instance.join_creator_campaign_with_http_info(token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JoinCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->join_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **join_creator_campaign_request** | [**JoinCreatorCampaignRequest**](JoinCreatorCampaignRequest.md) |  | [optional] |

### Return type

[**JoinCreatorCampaign201Response**](JoinCreatorCampaign201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## presign_creator_draft_upload

> <PresignCreatorDraftUpload200Response> presign_creator_draft_upload(token, presign_creator_draft_upload_request)

Get an upload URL for a draft

Returns a presigned URL to upload one draft file to, on a campaign with `requireDraftApproval`. `PUT` the file to `uploadUrl` with the same `Content-Type`, then pass `publicUrl` as `mediaUrl` to `POST /public/creator-campaigns/{token}/drafts`. The URL expires after `expiresIn` seconds.  Accepted files: MP4, MOV or WebM video, JPG, PNG or WebP image, up to 500 MB. About 20 uploads per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
presign_creator_draft_upload_request = Zernio::PresignCreatorDraftUploadRequest.new({filename: 'filename_example', content_type: 'video/mp4'}) # PresignCreatorDraftUploadRequest | 

begin
  # Get an upload URL for a draft
  result = api_instance.presign_creator_draft_upload(token, presign_creator_draft_upload_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->presign_creator_draft_upload: #{e}"
end
```

#### Using the presign_creator_draft_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PresignCreatorDraftUpload200Response>, Integer, Hash)> presign_creator_draft_upload_with_http_info(token, presign_creator_draft_upload_request)

```ruby
begin
  # Get an upload URL for a draft
  data, status_code, headers = api_instance.presign_creator_draft_upload_with_http_info(token, presign_creator_draft_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PresignCreatorDraftUpload200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->presign_creator_draft_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **presign_creator_draft_upload_request** | [**PresignCreatorDraftUploadRequest**](PresignCreatorDraftUploadRequest.md) |  |  |

### Return type

[**PresignCreatorDraftUpload200Response**](PresignCreatorDraftUpload200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## recover_creator_portal_links

> <RecoverCreatorPortalLinks202Response> recover_creator_portal_links(recover_creator_portal_links_request)

Email a creator their campaign links

For a creator who lost their link. Emails every personal participant link held by `email` in one message, optionally only the one for `campaignId`.  - Removed participants and draft campaigns are left out. - Always answers 202 with the same body, so the answer never tells whether the address has links. - Limited to 5 requests per hour per email address and 5 per hour per IP address. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
recover_creator_portal_links_request = Zernio::RecoverCreatorPortalLinksRequest.new({email: 'email_example'}) # RecoverCreatorPortalLinksRequest | 

begin
  # Email a creator their campaign links
  result = api_instance.recover_creator_portal_links(recover_creator_portal_links_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->recover_creator_portal_links: #{e}"
end
```

#### Using the recover_creator_portal_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecoverCreatorPortalLinks202Response>, Integer, Hash)> recover_creator_portal_links_with_http_info(recover_creator_portal_links_request)

```ruby
begin
  # Email a creator their campaign links
  data, status_code, headers = api_instance.recover_creator_portal_links_with_http_info(recover_creator_portal_links_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecoverCreatorPortalLinks202Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->recover_creator_portal_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recover_creator_portal_links_request** | [**RecoverCreatorPortalLinksRequest**](RecoverCreatorPortalLinksRequest.md) |  |  |

### Return type

[**RecoverCreatorPortalLinks202Response**](RecoverCreatorPortalLinks202Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_creator_account

> <RemoveCreatorAccount200Response> remove_creator_account(token, account_id)

Remove a connected account

Disconnects one of the creator's accounts. The account belongs to the creator, not to one campaign, so it stops counting in every campaign of this brand they joined.  What its posts already earned stays: accrued, approved and paid amounts are not touched.  Refused while a post from the account is still counting views, because those views are read through the account. It can be removed once their tracking ends. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
account_id = 'account_id_example' # String | The `id` of one of the participant's `accounts`.

begin
  # Remove a connected account
  result = api_instance.remove_creator_account(token, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->remove_creator_account: #{e}"
end
```

#### Using the remove_creator_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveCreatorAccount200Response>, Integer, Hash)> remove_creator_account_with_http_info(token, account_id)

```ruby
begin
  # Remove a connected account
  data, status_code, headers = api_instance.remove_creator_account_with_http_info(token, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveCreatorAccount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->remove_creator_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **account_id** | **String** | The &#x60;id&#x60; of one of the participant&#39;s &#x60;accounts&#x60;. |  |

### Return type

[**RemoveCreatorAccount200Response**](RemoveCreatorAccount200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_creator_sample

> <RequestCreatorSample201Response> request_creator_sample(token, request_creator_sample_request)

Request a product sample

Asks for a free sample of one of the campaign's `sampleProducts`, shipped to `shippingAddress`, and fires `campaign_sample.requested`. The request waits for the campaign team; on approval the creator gets a single-use discount code for the product.  - A product with `variants` needs `variantId`. - One open request per product: asking again while one is pending, approved or shipped answers 409. A declined product can be asked again.  About 10 requests per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
request_creator_sample_request = Zernio::RequestCreatorSampleRequest.new({product_id: 'product_id_example', shipping_address: Zernio::CampaignSampleShippingAddress.new({name: 'name_example', line1: 'line1_example', city: 'city_example', postal_code: 'postal_code_example', country: 'country_example'})}) # RequestCreatorSampleRequest | 

begin
  # Request a product sample
  result = api_instance.request_creator_sample(token, request_creator_sample_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->request_creator_sample: #{e}"
end
```

#### Using the request_creator_sample_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RequestCreatorSample201Response>, Integer, Hash)> request_creator_sample_with_http_info(token, request_creator_sample_request)

```ruby
begin
  # Request a product sample
  data, status_code, headers = api_instance.request_creator_sample_with_http_info(token, request_creator_sample_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RequestCreatorSample201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->request_creator_sample_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **request_creator_sample_request** | [**RequestCreatorSampleRequest**](RequestCreatorSampleRequest.md) |  |  |

### Return type

[**RequestCreatorSample201Response**](RequestCreatorSample201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_creator_spark_code

> <SetCreatorSparkCode200Response> set_creator_spark_code(token, submission_id, set_creator_spark_code_request)

Set a post's Spark code

The creator pastes the Spark code of one of their TikTok posts (generated in the TikTok app under the post's ad settings), so the brand can run the post as a Spark Ad under the creator's handle.  Send `null` to clear it. The code is never returned: submissions only expose `hasSparkCode`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
submission_id = 'submission_id_example' # String | The `id` of one of the participant's `submissions`.
set_creator_spark_code_request = Zernio::SetCreatorSparkCodeRequest.new({spark_auth_code: 'spark_auth_code_example'}) # SetCreatorSparkCodeRequest | 

begin
  # Set a post's Spark code
  result = api_instance.set_creator_spark_code(token, submission_id, set_creator_spark_code_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->set_creator_spark_code: #{e}"
end
```

#### Using the set_creator_spark_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetCreatorSparkCode200Response>, Integer, Hash)> set_creator_spark_code_with_http_info(token, submission_id, set_creator_spark_code_request)

```ruby
begin
  # Set a post's Spark code
  data, status_code, headers = api_instance.set_creator_spark_code_with_http_info(token, submission_id, set_creator_spark_code_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetCreatorSparkCode200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->set_creator_spark_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **submission_id** | **String** | The &#x60;id&#x60; of one of the participant&#39;s &#x60;submissions&#x60;. |  |
| **set_creator_spark_code_request** | [**SetCreatorSparkCodeRequest**](SetCreatorSparkCodeRequest.md) |  |  |

### Return type

[**SetCreatorSparkCode200Response**](SetCreatorSparkCode200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_creator_connect

> <StartCreatorConnect200Response> start_creator_connect(token, start_creator_connect_request)

Start connecting a creator account

Returns the URL that connects one of the creator's own social accounts, read-only, so their posts can be verified. Only the campaign's platforms are accepted.  `authUrl` opens the welcome screen in the campaign's brand, then the platform's sign-in.  The creator comes back to their participant page, or to the connect window's result screen when `windowUrl` is sent. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
start_creator_connect_request = Zernio::StartCreatorConnectRequest.new({platform: 'platform_example'}) # StartCreatorConnectRequest | 

begin
  # Start connecting a creator account
  result = api_instance.start_creator_connect(token, start_creator_connect_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->start_creator_connect: #{e}"
end
```

#### Using the start_creator_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartCreatorConnect200Response>, Integer, Hash)> start_creator_connect_with_http_info(token, start_creator_connect_request)

```ruby
begin
  # Start connecting a creator account
  data, status_code, headers = api_instance.start_creator_connect_with_http_info(token, start_creator_connect_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartCreatorConnect200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->start_creator_connect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **start_creator_connect_request** | [**StartCreatorConnectRequest**](StartCreatorConnectRequest.md) |  |  |

### Return type

[**StartCreatorConnect200Response**](StartCreatorConnect200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_creator_payouts

> <StartCreatorPayouts200Response> start_creator_payouts(token, start_creator_payouts_request)

Start payout onboarding

For a campaign that pays through the Zernio treasury: creates the creator's payee on first use and returns a Stripe-hosted onboarding link where they enter identity and bank details. `country` is required the first time and cannot change afterwards. About 20 attempts per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
start_creator_payouts_request = Zernio::StartCreatorPayoutsRequest.new({action: 'onboard'}) # StartCreatorPayoutsRequest | 

begin
  # Start payout onboarding
  result = api_instance.start_creator_payouts(token, start_creator_payouts_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->start_creator_payouts: #{e}"
end
```

#### Using the start_creator_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartCreatorPayouts200Response>, Integer, Hash)> start_creator_payouts_with_http_info(token, start_creator_payouts_request)

```ruby
begin
  # Start payout onboarding
  data, status_code, headers = api_instance.start_creator_payouts_with_http_info(token, start_creator_payouts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartCreatorPayouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->start_creator_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **start_creator_payouts_request** | [**StartCreatorPayoutsRequest**](StartCreatorPayoutsRequest.md) |  |  |

### Return type

[**StartCreatorPayouts200Response**](StartCreatorPayouts200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_creator_draft

> <SubmitCreatorDraft201Response> submit_creator_draft(token, submit_creator_draft_request)

Submit a draft for review

Sends a draft for the campaign team to review before the creator publishes, on a campaign with `requireDraftApproval`, and fires `campaign_draft.submitted`. `mediaUrl` must be a `publicUrl` from `POST /public/creator-campaigns/{token}/drafts/upload`.  ### Revisions  - Without `revisionOf` the draft starts a new chain at version 1. - With `revisionOf` it is the next version of that chain. Only one of the creator's own versions marked `revision_requested` takes a new version, and only once.  About 20 drafts per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
submit_creator_draft_request = Zernio::SubmitCreatorDraftRequest.new({media_url: 'media_url_example', media_type: 'video'}) # SubmitCreatorDraftRequest | 

begin
  # Submit a draft for review
  result = api_instance.submit_creator_draft(token, submit_creator_draft_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->submit_creator_draft: #{e}"
end
```

#### Using the submit_creator_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitCreatorDraft201Response>, Integer, Hash)> submit_creator_draft_with_http_info(token, submit_creator_draft_request)

```ruby
begin
  # Submit a draft for review
  data, status_code, headers = api_instance.submit_creator_draft_with_http_info(token, submit_creator_draft_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitCreatorDraft201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->submit_creator_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **submit_creator_draft_request** | [**SubmitCreatorDraftRequest**](SubmitCreatorDraftRequest.md) |  |  |

### Return type

[**SubmitCreatorDraft201Response**](SubmitCreatorDraft201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_creator_post

> <SubmitCreatorPost201Response> submit_creator_post(token, submit_creator_post_request)

Submit a post

Submits the link to a post the creator published from a connected account. The post opens a tracking window and fires `campaign_submission.received` to the operator. About 30 attempts and 10 accepted posts per participant every 10 minutes. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::CreatorPortalApi.new
token = 'token_example' # String | A participant token or an open invite token. A malformed token answers 404 like an unknown one.
submit_creator_post_request = Zernio::SubmitCreatorPostRequest.new({url: 'url_example'}) # SubmitCreatorPostRequest | 

begin
  # Submit a post
  result = api_instance.submit_creator_post(token, submit_creator_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->submit_creator_post: #{e}"
end
```

#### Using the submit_creator_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitCreatorPost201Response>, Integer, Hash)> submit_creator_post_with_http_info(token, submit_creator_post_request)

```ruby
begin
  # Submit a post
  data, status_code, headers = api_instance.submit_creator_post_with_http_info(token, submit_creator_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitCreatorPost201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorPortalApi->submit_creator_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A participant token or an open invite token. A malformed token answers 404 like an unknown one. |  |
| **submit_creator_post_request** | [**SubmitCreatorPostRequest**](SubmitCreatorPostRequest.md) |  |  |

### Return type

[**SubmitCreatorPost201Response**](SubmitCreatorPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

