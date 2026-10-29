# Zernio::CreatorCampaignsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_creator_campaign**](CreatorCampaignsApi.md#activate_creator_campaign) | **POST** /v1/creator-campaigns/{campaignId}/activate | Activate creator campaign |
| [**approve_campaign_submission**](CreatorCampaignsApi.md#approve_campaign_submission) | **POST** /v1/creator-campaigns/{campaignId}/submissions/{submissionId}/approve | Approve campaign submission |
| [**close_creator_campaign**](CreatorCampaignsApi.md#close_creator_campaign) | **POST** /v1/creator-campaigns/{campaignId}/close | Close creator campaign |
| [**create_campaign_adjustment**](CreatorCampaignsApi.md#create_campaign_adjustment) | **POST** /v1/creator-campaigns/{campaignId}/adjustments | Create campaign adjustment |
| [**create_campaign_invite_link**](CreatorCampaignsApi.md#create_campaign_invite_link) | **POST** /v1/creator-campaigns/{campaignId}/invite-link | Create campaign invite link |
| [**create_campaign_participant**](CreatorCampaignsApi.md#create_campaign_participant) | **POST** /v1/creator-campaigns/{campaignId}/participants | Invite campaign participant |
| [**create_campaign_payout_batch**](CreatorCampaignsApi.md#create_campaign_payout_batch) | **POST** /v1/creator-campaigns/{campaignId}/payout-batches | Pay creators with one card payment |
| [**create_creator_campaign**](CreatorCampaignsApi.md#create_creator_campaign) | **POST** /v1/creator-campaigns | Create creator campaign |
| [**get_campaign_participant**](CreatorCampaignsApi.md#get_campaign_participant) | **GET** /v1/creator-campaigns/{campaignId}/participants/{participantId} | Get campaign participant |
| [**get_campaign_report**](CreatorCampaignsApi.md#get_campaign_report) | **GET** /v1/creator-campaigns/{campaignId}/report | Get campaign report |
| [**get_campaign_submission**](CreatorCampaignsApi.md#get_campaign_submission) | **GET** /v1/creator-campaigns/{campaignId}/submissions/{submissionId} | Get campaign submission |
| [**get_creator_campaign**](CreatorCampaignsApi.md#get_creator_campaign) | **GET** /v1/creator-campaigns/{campaignId} | Get creator campaign |
| [**list_campaign_ledger**](CreatorCampaignsApi.md#list_campaign_ledger) | **GET** /v1/creator-campaigns/{campaignId}/ledger | List campaign ledger |
| [**list_campaign_participants**](CreatorCampaignsApi.md#list_campaign_participants) | **GET** /v1/creator-campaigns/{campaignId}/participants | List campaign participants |
| [**list_campaign_payables**](CreatorCampaignsApi.md#list_campaign_payables) | **GET** /v1/creator-campaigns/{campaignId}/payables | List campaign payables |
| [**list_campaign_payout_batches**](CreatorCampaignsApi.md#list_campaign_payout_batches) | **GET** /v1/creator-campaigns/{campaignId}/payout-batches | List payout batches |
| [**list_campaign_submissions**](CreatorCampaignsApi.md#list_campaign_submissions) | **GET** /v1/creator-campaigns/{campaignId}/submissions | List campaign submissions |
| [**list_creator_campaigns**](CreatorCampaignsApi.md#list_creator_campaigns) | **GET** /v1/creator-campaigns | List creator campaigns |
| [**pause_creator_campaign**](CreatorCampaignsApi.md#pause_creator_campaign) | **POST** /v1/creator-campaigns/{campaignId}/pause | Pause creator campaign |
| [**raise_creator_campaign_budget**](CreatorCampaignsApi.md#raise_creator_campaign_budget) | **POST** /v1/creator-campaigns/{campaignId}/budget | Raise creator campaign budget |
| [**reinstate_campaign_participant**](CreatorCampaignsApi.md#reinstate_campaign_participant) | **POST** /v1/creator-campaigns/{campaignId}/participants/{participantId}/reinstate | Reinstate campaign participant |
| [**reject_campaign_submission**](CreatorCampaignsApi.md#reject_campaign_submission) | **POST** /v1/creator-campaigns/{campaignId}/submissions/{submissionId}/reject | Reject campaign submission |
| [**remove_campaign_participant**](CreatorCampaignsApi.md#remove_campaign_participant) | **POST** /v1/creator-campaigns/{campaignId}/participants/{participantId}/remove | Remove campaign participant |
| [**reopen_campaign_submission**](CreatorCampaignsApi.md#reopen_campaign_submission) | **POST** /v1/creator-campaigns/{campaignId}/submissions/{submissionId}/reopen | Reopen campaign submission |
| [**resend_campaign_participant_invite**](CreatorCampaignsApi.md#resend_campaign_participant_invite) | **POST** /v1/creator-campaigns/{campaignId}/participants/{participantId}/resend-invite | Resend campaign participant invite |
| [**settle_campaign_participant**](CreatorCampaignsApi.md#settle_campaign_participant) | **POST** /v1/creator-campaigns/{campaignId}/participants/{participantId}/settle | Settle campaign participant |
| [**suspend_campaign_participant**](CreatorCampaignsApi.md#suspend_campaign_participant) | **POST** /v1/creator-campaigns/{campaignId}/participants/{participantId}/suspend | Suspend campaign participant |
| [**update_creator_campaign**](CreatorCampaignsApi.md#update_creator_campaign) | **PATCH** /v1/creator-campaigns/{campaignId} | Update creator campaign |


## activate_creator_campaign

> <CreateCreatorCampaign201Response> activate_creator_campaign(campaign_id)

Activate creator campaign

Moves a `draft` or `paused` campaign to `active`, where creators can join and submit posts and tracked views accrue earnings. Needs at least one platform and a budget above zero; any other starting state answers 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Activate creator campaign
  result = api_instance.activate_creator_campaign(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->activate_creator_campaign: #{e}"
end
```

#### Using the activate_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> activate_creator_campaign_with_http_info(campaign_id)

```ruby
begin
  # Activate creator campaign
  data, status_code, headers = api_instance.activate_creator_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->activate_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## approve_campaign_submission

> <ApproveCampaignSubmission200Response> approve_campaign_submission(campaign_id, submission_id, opts)

Approve campaign submission

Approves a `tracking` or `pending_review` submission of an active campaign and fires `campaign_submission.approved`.  The Zernio dashboard offers Approve only on `pending_review` (a post that needs a decision) and waits for `tracking` posts to get there. The API accepts `tracking` so an integration can approve early.  ### Earnings  - What the post earned so far moves to owed and is held for the campaign's `holdDays`. - Later earnings post straight to owed. - A per-post campaign pays `perApprovedPostCents` here.  ### Errors  - 409: the submission is in any other state. - 409 (`invalid_resource_state`, \"This post is already approved in another campaign of yours.\"): the same post was approved in another of your campaigns, so one post never earns twice. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
submission_id = 'submission_id_example' # String | Submission ID.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Approve campaign submission
  result = api_instance.approve_campaign_submission(campaign_id, submission_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->approve_campaign_submission: #{e}"
end
```

#### Using the approve_campaign_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApproveCampaignSubmission200Response>, Integer, Hash)> approve_campaign_submission_with_http_info(campaign_id, submission_id, opts)

```ruby
begin
  # Approve campaign submission
  data, status_code, headers = api_instance.approve_campaign_submission_with_http_info(campaign_id, submission_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApproveCampaignSubmission200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->approve_campaign_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **submission_id** | **String** | Submission ID. |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**ApproveCampaignSubmission200Response**](ApproveCampaignSubmission200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## close_creator_campaign

> <CreateCreatorCampaign201Response> close_creator_campaign(campaign_id)

Close creator campaign

Closes an `active` or `paused` campaign for good and fires `creator_campaign.closed`. Open tracking windows are cancelled.  A pool campaign is split among participants at this moment by their approved eligible views. Closing a pool campaign therefore answers 409 while any post still awaits review.  A campaign also closes by itself once `endsAt` passed and every tracking window had its final read. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Close creator campaign
  result = api_instance.close_creator_campaign(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->close_creator_campaign: #{e}"
end
```

#### Using the close_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> close_creator_campaign_with_http_info(campaign_id)

```ruby
begin
  # Close creator campaign
  data, status_code, headers = api_instance.close_creator_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->close_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_campaign_adjustment

> <CreateCampaignAdjustment201Response> create_campaign_adjustment(campaign_id, create_campaign_adjustment_request, opts)

Create campaign adjustment

Posts a manual adjustment to a participant's payable balance against the campaign budget: a positive amount credits the participant (a bonus), a negative one claws back. `cause` is kept on the ledger entry. A claw-back larger than the payable balance answers 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
create_campaign_adjustment_request = Zernio::CreateCampaignAdjustmentRequest.new({participant_id: 'participant_id_example', amount_cents: 37, cause: 'cause_example'}) # CreateCampaignAdjustmentRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Create campaign adjustment
  result = api_instance.create_campaign_adjustment(campaign_id, create_campaign_adjustment_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_adjustment: #{e}"
end
```

#### Using the create_campaign_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCampaignAdjustment201Response>, Integer, Hash)> create_campaign_adjustment_with_http_info(campaign_id, create_campaign_adjustment_request, opts)

```ruby
begin
  # Create campaign adjustment
  data, status_code, headers = api_instance.create_campaign_adjustment_with_http_info(campaign_id, create_campaign_adjustment_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCampaignAdjustment201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **create_campaign_adjustment_request** | [**CreateCampaignAdjustmentRequest**](CreateCampaignAdjustmentRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**CreateCampaignAdjustment201Response**](CreateCampaignAdjustment201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_campaign_invite_link

> <CreateCampaignInviteLink201Response> create_campaign_invite_link(campaign_id)

Create campaign invite link

Creates the campaign's open invite link: anyone with it can join as a participant (up to `caps.maxParticipants`). Creating a new link revokes the previous one. The URL is returned only here. Answers 409 on a closed campaign. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Create campaign invite link
  result = api_instance.create_campaign_invite_link(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_invite_link: #{e}"
end
```

#### Using the create_campaign_invite_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCampaignInviteLink201Response>, Integer, Hash)> create_campaign_invite_link_with_http_info(campaign_id)

```ruby
begin
  # Create campaign invite link
  data, status_code, headers = api_instance.create_campaign_invite_link_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCampaignInviteLink201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_invite_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**CreateCampaignInviteLink201Response**](CreateCampaignInviteLink201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_campaign_participant

> <CreateCampaignParticipant201Response> create_campaign_participant(campaign_id, create_campaign_participant_request, opts)

Invite campaign participant

Invites one creator and returns their personal invite URL.  Send the URL to the creator. On that page they connect their accounts (read-only), submit posts and see their earnings.  ### Invite rules  - The URL is returned only here; inviting again creates no second link. - A creator is matched by email within your workspace, so the same person keeps one identity across your campaigns.  ### Errors  - 409: the creator is already in the campaign, or the campaign is closed. - 403 `feature_not_available`: `caps.maxParticipants` is reached. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
create_campaign_participant_request = Zernio::CreateCampaignParticipantRequest.new({display_name: 'display_name_example'}) # CreateCampaignParticipantRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Invite campaign participant
  result = api_instance.create_campaign_participant(campaign_id, create_campaign_participant_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_participant: #{e}"
end
```

#### Using the create_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCampaignParticipant201Response>, Integer, Hash)> create_campaign_participant_with_http_info(campaign_id, create_campaign_participant_request, opts)

```ruby
begin
  # Invite campaign participant
  data, status_code, headers = api_instance.create_campaign_participant_with_http_info(campaign_id, create_campaign_participant_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCampaignParticipant201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **create_campaign_participant_request** | [**CreateCampaignParticipantRequest**](CreateCampaignParticipantRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**CreateCampaignParticipant201Response**](CreateCampaignParticipant201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_campaign_payout_batch

> <CreateCampaignPayoutBatch201Response> create_campaign_payout_batch(campaign_id, opts)

Pay creators with one card payment

Pays exactly what is owed to the creators of a `treasury` campaign by charging the billing owner's saved card, with no redirect.  ### How it works  1. Every payable creator who finished payout setup (or only `participantIds`, minus `excludeParticipantIds`) is held in `settling`. 2. The saved card (the default one, or `paymentMethodId`) is charged the total plus the fee (4% per creator, 50 cent minimum) while the payer is present. 3. Once the charge succeeds, each creator gets a transfer funded by it, and the batch ends `paid` or `partially_failed`.  A creator whose payouts were disabled before the payment landed is skipped and stays payable.  ### 3D Secure  `payment.status: requires_action` means the bank asked the payer to confirm. Complete it with Stripe.js `handleNextAction({ clientSecret })`, then call `POST /v1/payout-batches/{batchId}/confirm`.  One left unfinished is cancelled after 30 minutes and every amount is payable again. Cancel it sooner with `POST /v1/payout-batches/{batchId}/cancel`.  ### Limits and errors  - 402 `payment_required`: no saved card. Nothing is held. - 402 `card_declined`: the bank's reason; every amount is payable again. - 402: card payouts are limited to $10,000.00 gross per rolling 30 days by default. Over it the call answers \"Over your instant payout limit. Top up your balance to pay more this month, or contact support to raise the limit.\" - 400: nothing payable (\"Nothing is payable.\").  ### Access and retries  Needs an owner, admin or billing admin, signed in or through a full-access key they created.  Send an `Idempotency-Key` so a retry never opens a second batch. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
opts = {
  idempotency_key: 'idempotency_key_example', # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
  create_campaign_payout_batch_request: Zernio::CreateCampaignPayoutBatchRequest.new # CreateCampaignPayoutBatchRequest | 
}

begin
  # Pay creators with one card payment
  result = api_instance.create_campaign_payout_batch(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_payout_batch: #{e}"
end
```

#### Using the create_campaign_payout_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCampaignPayoutBatch201Response>, Integer, Hash)> create_campaign_payout_batch_with_http_info(campaign_id, opts)

```ruby
begin
  # Pay creators with one card payment
  data, status_code, headers = api_instance.create_campaign_payout_batch_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCampaignPayoutBatch201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_campaign_payout_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |
| **create_campaign_payout_batch_request** | [**CreateCampaignPayoutBatchRequest**](CreateCampaignPayoutBatchRequest.md) |  | [optional] |

### Return type

[**CreateCampaignPayoutBatch201Response**](CreateCampaignPayoutBatch201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_creator_campaign

> <CreateCreatorCampaign201Response> create_creator_campaign(create_creator_campaign_request, opts)

Create creator campaign

Creates a campaign in `draft`. Creators are paid for verified performance of the posts they submit: Zernio tracks each post through a tracking window, scores its authenticity and records every earning in a ledger. Activate the campaign to start accepting submissions.  Creator campaigns run on usage-based billing; a workspace not on it gets 403 `feature_not_available`. `profileId` must be a profile this key can reach, otherwise 404. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
create_creator_campaign_request = Zernio::CreateCreatorCampaignRequest.new({profile_id: 'profile_id_example', name: 'name_example', brand_name: 'brand_name_example', economics: Zernio::CreatorCampaignEconomicsCpm.new({type: 'cpm', rate_per1k_cents: 37, min_views_to_earn: 37, budget_cents: 37})}) # CreateCreatorCampaignRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Create creator campaign
  result = api_instance.create_creator_campaign(create_creator_campaign_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_creator_campaign: #{e}"
end
```

#### Using the create_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> create_creator_campaign_with_http_info(create_creator_campaign_request, opts)

```ruby
begin
  # Create creator campaign
  data, status_code, headers = api_instance.create_creator_campaign_with_http_info(create_creator_campaign_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->create_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_creator_campaign_request** | [**CreateCreatorCampaignRequest**](CreateCreatorCampaignRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_campaign_participant

> <GetCampaignParticipant200Response> get_campaign_participant(campaign_id, participant_id)

Get campaign participant

Returns one participant with connected accounts, balances by state, flags and submission counts. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.

begin
  # Get campaign participant
  result = api_instance.get_campaign_participant(campaign_id, participant_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_participant: #{e}"
end
```

#### Using the get_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignParticipant200Response>, Integer, Hash)> get_campaign_participant_with_http_info(campaign_id, participant_id)

```ruby
begin
  # Get campaign participant
  data, status_code, headers = api_instance.get_campaign_participant_with_http_info(campaign_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |

### Return type

[**GetCampaignParticipant200Response**](GetCampaignParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_report

> <GetCampaignReport200Response> get_campaign_report(campaign_id)

Get campaign report

Returns spend against budget, views, submission counts, the top ten participants by earnings and the authenticity score distribution. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Get campaign report
  result = api_instance.get_campaign_report(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_report: #{e}"
end
```

#### Using the get_campaign_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignReport200Response>, Integer, Hash)> get_campaign_report_with_http_info(campaign_id)

```ruby
begin
  # Get campaign report
  data, status_code, headers = api_instance.get_campaign_report_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignReport200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**GetCampaignReport200Response**](GetCampaignReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_submission

> <GetCampaignSubmission200Response> get_campaign_submission(campaign_id, submission_id)

Get campaign submission

Returns one submission with its per-sync samples (views, likes, comments, shares, saves). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
submission_id = 'submission_id_example' # String | Submission ID.

begin
  # Get campaign submission
  result = api_instance.get_campaign_submission(campaign_id, submission_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_submission: #{e}"
end
```

#### Using the get_campaign_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignSubmission200Response>, Integer, Hash)> get_campaign_submission_with_http_info(campaign_id, submission_id)

```ruby
begin
  # Get campaign submission
  data, status_code, headers = api_instance.get_campaign_submission_with_http_info(campaign_id, submission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignSubmission200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_campaign_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **submission_id** | **String** | Submission ID. |  |

### Return type

[**GetCampaignSubmission200Response**](GetCampaignSubmission200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creator_campaign

> <CreateCreatorCampaign201Response> get_creator_campaign(campaign_id)

Get creator campaign

Returns the campaign with its budget consumption, participant count and submission counts. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Get creator campaign
  result = api_instance.get_creator_campaign(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_creator_campaign: #{e}"
end
```

#### Using the get_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> get_creator_campaign_with_http_info(campaign_id)

```ruby
begin
  # Get creator campaign
  data, status_code, headers = api_instance.get_creator_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->get_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_ledger

> <ListCampaignLedger200Response> list_campaign_ledger(campaign_id, opts)

List campaign ledger

Lists ledger entries, newest first.  Without `participantId` it lists every entry of the campaign:  - earnings drawn from the budget (accruals, per-post payments, pool shares, adjustments) - the approvals, hold releases and settlements that move money between its participants' buckets - their reversals  Pass `participantId` to narrow the list to one participant's entries. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
opts = {
  participant_id: 'participant_id_example', # String | List only this participant's entries.
  kind: 'accrual', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List campaign ledger
  result = api_instance.list_campaign_ledger(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_ledger: #{e}"
end
```

#### Using the list_campaign_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignLedger200Response>, Integer, Hash)> list_campaign_ledger_with_http_info(campaign_id, opts)

```ruby
begin
  # List campaign ledger
  data, status_code, headers = api_instance.list_campaign_ledger_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignLedger200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | List only this participant&#39;s entries. | [optional] |
| **kind** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListCampaignLedger200Response**](ListCampaignLedger200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_participants

> <ListCampaignParticipants200Response> list_campaign_participants(campaign_id, opts)

List campaign participants

Lists the campaign's participants with their balances, flags and submission counts. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
opts = {
  status: 'invited', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List campaign participants
  result = api_instance.list_campaign_participants(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_participants: #{e}"
end
```

#### Using the list_campaign_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignParticipants200Response>, Integer, Hash)> list_campaign_participants_with_http_info(campaign_id, opts)

```ruby
begin
  # List campaign participants
  data, status_code, headers = api_instance.list_campaign_participants_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignParticipants200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **status** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListCampaignParticipants200Response**](ListCampaignParticipants200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_payables

> <ListCampaignPayables200Response> list_campaign_payables(campaign_id)

List campaign payables

Lists every participant with a payable balance (earnings past their hold), with the ledger entries behind it. Pay these, then record each payout with the settle endpoint. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # List campaign payables
  result = api_instance.list_campaign_payables(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_payables: #{e}"
end
```

#### Using the list_campaign_payables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignPayables200Response>, Integer, Hash)> list_campaign_payables_with_http_info(campaign_id)

```ruby
begin
  # List campaign payables
  data, status_code, headers = api_instance.list_campaign_payables_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignPayables200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_payables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**ListCampaignPayables200Response**](ListCampaignPayables200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_payout_batches

> <ListCampaignPayoutBatches200Response> list_campaign_payout_batches(campaign_id, opts)

List payout batches

The campaign's payout batches, newest first, with each creator's item.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
opts = {
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List payout batches
  result = api_instance.list_campaign_payout_batches(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_payout_batches: #{e}"
end
```

#### Using the list_campaign_payout_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignPayoutBatches200Response>, Integer, Hash)> list_campaign_payout_batches_with_http_info(campaign_id, opts)

```ruby
begin
  # List payout batches
  data, status_code, headers = api_instance.list_campaign_payout_batches_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignPayoutBatches200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_payout_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListCampaignPayoutBatches200Response**](ListCampaignPayoutBatches200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_submissions

> <ListCampaignSubmissions200Response> list_campaign_submissions(campaign_id, opts)

List campaign submissions

Lists submitted posts with views, earnings, authenticity score and flags. Filter by status, participant, flag, platform or score range to build a review queue, for example `status=pending_review`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
opts = {
  status: 'received', # String | 
  participant_id: 'participant_id_example', # String | 
  flag: 'duplicate_media', # String | 
  platform: 'tiktok', # String | 
  min_score: 56, # Integer | 
  max_score: 56, # Integer | 
  q: 'q_example', # String | Only submissions whose creator name or post link contains this text, ignoring case.
  sort: 'submittedAt', # String | What to sort by. Posts with no value to sort by (not read yet, not scored) come last in either direction.
  order: 'asc', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List campaign submissions
  result = api_instance.list_campaign_submissions(campaign_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_submissions: #{e}"
end
```

#### Using the list_campaign_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCampaignSubmissions200Response>, Integer, Hash)> list_campaign_submissions_with_http_info(campaign_id, opts)

```ruby
begin
  # List campaign submissions
  data, status_code, headers = api_instance.list_campaign_submissions_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCampaignSubmissions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_campaign_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **status** | **String** |  | [optional] |
| **participant_id** | **String** |  | [optional] |
| **flag** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **min_score** | **Integer** |  | [optional] |
| **max_score** | **Integer** |  | [optional] |
| **q** | **String** | Only submissions whose creator name or post link contains this text, ignoring case. | [optional] |
| **sort** | **String** | What to sort by. Posts with no value to sort by (not read yet, not scored) come last in either direction. | [optional][default to &#39;submittedAt&#39;] |
| **order** | **String** |  | [optional][default to &#39;desc&#39;] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListCampaignSubmissions200Response**](ListCampaignSubmissions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_creator_campaigns

> <ListCreatorCampaigns200Response> list_creator_campaigns(opts)

List creator campaigns

Lists the team's campaigns in the profiles this key can reach, newest first. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
opts = {
  status: 'draft', # String | 
  profile_id: 'profile_id_example', # String | Only campaigns in this profile.
  q: 'q_example', # String | Only campaigns whose name or brand name contains this text, ignoring case.
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List creator campaigns
  result = api_instance.list_creator_campaigns(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_creator_campaigns: #{e}"
end
```

#### Using the list_creator_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreatorCampaigns200Response>, Integer, Hash)> list_creator_campaigns_with_http_info(opts)

```ruby
begin
  # List creator campaigns
  data, status_code, headers = api_instance.list_creator_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreatorCampaigns200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->list_creator_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **profile_id** | **String** | Only campaigns in this profile. | [optional] |
| **q** | **String** | Only campaigns whose name or brand name contains this text, ignoring case. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListCreatorCampaigns200Response**](ListCreatorCampaigns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pause_creator_campaign

> <CreateCreatorCampaign201Response> pause_creator_campaign(campaign_id)

Pause creator campaign

Moves an `active` campaign to `paused`: no new submissions, and approvals answer 409 until the campaign is activated again. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.

begin
  # Pause creator campaign
  result = api_instance.pause_creator_campaign(campaign_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->pause_creator_campaign: #{e}"
end
```

#### Using the pause_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> pause_creator_campaign_with_http_info(campaign_id)

```ruby
begin
  # Pause creator campaign
  data, status_code, headers = api_instance.pause_creator_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->pause_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## raise_creator_campaign_budget

> <CreateCreatorCampaign201Response> raise_creator_campaign_budget(campaign_id, raise_creator_campaign_budget_request, opts)

Raise creator campaign budget

Raises the budget of a campaign that is `draft`, `active` or `paused`.  Only the budget changes. The pay terms stay as creators joined them, which `PATCH` refuses to change once the campaign is live.  - The new `budgetCents` must be above the current budget, otherwise 400 `invalid_field_value`. - When it is also above what the campaign has spent, `budgetExhaustedAt` is cleared and earnings that stopped at the old budget resume. - A closed campaign answers 409 `invalid_resource_state`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
raise_creator_campaign_budget_request = Zernio::RaiseCreatorCampaignBudgetRequest.new({budget_cents: 37}) # RaiseCreatorCampaignBudgetRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Raise creator campaign budget
  result = api_instance.raise_creator_campaign_budget(campaign_id, raise_creator_campaign_budget_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->raise_creator_campaign_budget: #{e}"
end
```

#### Using the raise_creator_campaign_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> raise_creator_campaign_budget_with_http_info(campaign_id, raise_creator_campaign_budget_request, opts)

```ruby
begin
  # Raise creator campaign budget
  data, status_code, headers = api_instance.raise_creator_campaign_budget_with_http_info(campaign_id, raise_creator_campaign_budget_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->raise_creator_campaign_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **raise_creator_campaign_budget_request** | [**RaiseCreatorCampaignBudgetRequest**](RaiseCreatorCampaignBudgetRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reinstate_campaign_participant

> <GetCampaignParticipant200Response> reinstate_campaign_participant(campaign_id, participant_id)

Reinstate campaign participant

Reinstates a `suspended` participant: they can submit posts again. Any other status answers 409; a removed participant stays removed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.

begin
  # Reinstate campaign participant
  result = api_instance.reinstate_campaign_participant(campaign_id, participant_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reinstate_campaign_participant: #{e}"
end
```

#### Using the reinstate_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignParticipant200Response>, Integer, Hash)> reinstate_campaign_participant_with_http_info(campaign_id, participant_id)

```ruby
begin
  # Reinstate campaign participant
  data, status_code, headers = api_instance.reinstate_campaign_participant_with_http_info(campaign_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reinstate_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |

### Return type

[**GetCampaignParticipant200Response**](GetCampaignParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reject_campaign_submission

> <ApproveCampaignSubmission200Response> reject_campaign_submission(campaign_id, submission_id, reject_campaign_submission_request, opts)

Reject campaign submission

Rejects a submission (also one already approved) and fires `campaign_submission.rejected`. Its tracking window is cancelled and its unsettled earnings return to the campaign budget. Rejecting a rejected submission returns it unchanged; an expired or withdrawn one answers 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
submission_id = 'submission_id_example' # String | Submission ID.
reject_campaign_submission_request = Zernio::RejectCampaignSubmissionRequest.new({reason: 'reason_example'}) # RejectCampaignSubmissionRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Reject campaign submission
  result = api_instance.reject_campaign_submission(campaign_id, submission_id, reject_campaign_submission_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reject_campaign_submission: #{e}"
end
```

#### Using the reject_campaign_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApproveCampaignSubmission200Response>, Integer, Hash)> reject_campaign_submission_with_http_info(campaign_id, submission_id, reject_campaign_submission_request, opts)

```ruby
begin
  # Reject campaign submission
  data, status_code, headers = api_instance.reject_campaign_submission_with_http_info(campaign_id, submission_id, reject_campaign_submission_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApproveCampaignSubmission200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reject_campaign_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **submission_id** | **String** | Submission ID. |  |
| **reject_campaign_submission_request** | [**RejectCampaignSubmissionRequest**](RejectCampaignSubmissionRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**ApproveCampaignSubmission200Response**](ApproveCampaignSubmission200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_campaign_participant

> <GetCampaignParticipant200Response> remove_campaign_participant(campaign_id, participant_id)

Remove campaign participant

Removes the participant from the campaign. Their earnings stay in the ledger. Removing an `invited` participant revokes their invite: the link stops working. Removing an already removed participant returns it unchanged. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.

begin
  # Remove campaign participant
  result = api_instance.remove_campaign_participant(campaign_id, participant_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->remove_campaign_participant: #{e}"
end
```

#### Using the remove_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignParticipant200Response>, Integer, Hash)> remove_campaign_participant_with_http_info(campaign_id, participant_id)

```ruby
begin
  # Remove campaign participant
  data, status_code, headers = api_instance.remove_campaign_participant_with_http_info(campaign_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->remove_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |

### Return type

[**GetCampaignParticipant200Response**](GetCampaignParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reopen_campaign_submission

> <ApproveCampaignSubmission200Response> reopen_campaign_submission(campaign_id, submission_id, opts)

Reopen campaign submission

Puts a rejected submission back to `pending_review` so it can be decided again. No webhook fires.  Its tracking window resumes, so it works only while that window has not ended.  ### When it can't be reopened  - The tracking window has ended: 409 `invalid_resource_state` (\"This post's tracking window has ended.\"). - A post that earned money which was already paid out cannot be reopened. - A post of a closed campaign cannot be reopened. - Any status other than rejected or `pending_review` answers 409.  Reopening a submission that is already `pending_review` returns it unchanged. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
submission_id = 'submission_id_example' # String | Submission ID.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Reopen campaign submission
  result = api_instance.reopen_campaign_submission(campaign_id, submission_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reopen_campaign_submission: #{e}"
end
```

#### Using the reopen_campaign_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApproveCampaignSubmission200Response>, Integer, Hash)> reopen_campaign_submission_with_http_info(campaign_id, submission_id, opts)

```ruby
begin
  # Reopen campaign submission
  data, status_code, headers = api_instance.reopen_campaign_submission_with_http_info(campaign_id, submission_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApproveCampaignSubmission200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->reopen_campaign_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **submission_id** | **String** | Submission ID. |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**ApproveCampaignSubmission200Response**](ApproveCampaignSubmission200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_campaign_participant_invite

> <GetCampaignParticipant200Response> resend_campaign_participant_invite(campaign_id, participant_id, opts)

Resend campaign participant invite

Emails an `invited` participant their personal invite link again. The link does not change, so a link you already sent keeps working. The email counts toward the daily invite email cap of your workspace.  Answers 409 when the participant has already joined, was suspended or removed, has no email, or the campaign is closed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Resend campaign participant invite
  result = api_instance.resend_campaign_participant_invite(campaign_id, participant_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->resend_campaign_participant_invite: #{e}"
end
```

#### Using the resend_campaign_participant_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignParticipant200Response>, Integer, Hash)> resend_campaign_participant_invite_with_http_info(campaign_id, participant_id, opts)

```ruby
begin
  # Resend campaign participant invite
  data, status_code, headers = api_instance.resend_campaign_participant_invite_with_http_info(campaign_id, participant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->resend_campaign_participant_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**GetCampaignParticipant200Response**](GetCampaignParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## settle_campaign_participant

> <SettleCampaignParticipant201Response> settle_campaign_participant(campaign_id, participant_id, settle_campaign_participant_request, opts)

Settle campaign participant

Records a payout of the participant's payable balance and fires `campaign_payout.settled`.  Omit `amountCents` to settle the whole payable balance. An amount above it answers 400, and nothing payable answers 409. Send an `Idempotency-Key` so a retry never records the payout twice.  ### Settlement modes  - `none` settlement: records a payout you made elsewhere. - `external` settlement: pay from your own rails when `campaign_payout.payable` fires, then call this with your payout id in `externalReference` (required in this mode). - `treasury` settlement: transfers the amount from your Zernio balance to the creator's connected Stripe account, then records it with the Stripe transfer id as `externalReference`.  ### Treasury payouts  The transfer fee (4%, $0.50 minimum) is added on top: the creator receives the full amount and your balance is debited `totalCents`.  - The creator must have finished payout setup from their campaign page (409 otherwise). - A balance that does not cover the amount plus the fee answers 402. - Money from a card top-up charged under 7 days ago cannot be paid out yet: a payout that needs it answers 409 `payout_funds_locked` with the day it can be sent.  Set `recordOnly: true` to record a payout you made yourself instead of moving money through the treasury (the webhook then carries `recorded: true`).  A treasury payout needs an owner, admin or billing admin, signed in or through a full-access key they created (403 otherwise). Recording with `recordOnly` does not.  #### While Stripe confirms the transfer  The amount sits in the participant's `settling` balance; a reject in that window cannot reverse it.  - If Stripe refuses the transfer, the amount returns to payable. - If Stripe does not answer, the amount stays in `settling`. The next settle call for this participant finishes that payout first (even with nothing payable left).  #### Conflicts (409)  - A retry asking for a different `amountCents` than the payout in progress answers 409 with the amount in progress. - A settle while another request is still waiting on Stripe for the same payout answers 409 (\"This payout is being sent to Stripe right now. Try again in a minute.\"). - A payout Stripe has not confirmed after 24 hours answers 409 (\"This payout is being confirmed with Stripe. Try again after the next reconciliation (within 24 hours).\") until the daily reconciliation finishes it: settled if Stripe made the transfer, returned to payable if it did not. - A creator held by an unfinished payout batch answers 409 (\"This creator is in a card payout that is not finished yet.\"). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.
settle_campaign_participant_request = Zernio::SettleCampaignParticipantRequest.new # SettleCampaignParticipantRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Settle campaign participant
  result = api_instance.settle_campaign_participant(campaign_id, participant_id, settle_campaign_participant_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->settle_campaign_participant: #{e}"
end
```

#### Using the settle_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettleCampaignParticipant201Response>, Integer, Hash)> settle_campaign_participant_with_http_info(campaign_id, participant_id, settle_campaign_participant_request, opts)

```ruby
begin
  # Settle campaign participant
  data, status_code, headers = api_instance.settle_campaign_participant_with_http_info(campaign_id, participant_id, settle_campaign_participant_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettleCampaignParticipant201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->settle_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |
| **settle_campaign_participant_request** | [**SettleCampaignParticipantRequest**](SettleCampaignParticipantRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**SettleCampaignParticipant201Response**](SettleCampaignParticipant201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## suspend_campaign_participant

> <GetCampaignParticipant200Response> suspend_campaign_participant(campaign_id, participant_id)

Suspend campaign participant

Suspends an `active` participant: they can no longer submit posts. Any other status answers 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
participant_id = 'participant_id_example' # String | Participant ID.

begin
  # Suspend campaign participant
  result = api_instance.suspend_campaign_participant(campaign_id, participant_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->suspend_campaign_participant: #{e}"
end
```

#### Using the suspend_campaign_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignParticipant200Response>, Integer, Hash)> suspend_campaign_participant_with_http_info(campaign_id, participant_id)

```ruby
begin
  # Suspend campaign participant
  data, status_code, headers = api_instance.suspend_campaign_participant_with_http_info(campaign_id, participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->suspend_campaign_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **participant_id** | **String** | Participant ID. |  |

### Return type

[**GetCampaignParticipant200Response**](GetCampaignParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_creator_campaign

> <CreateCreatorCampaign201Response> update_creator_campaign(campaign_id, update_creator_campaign_request)

Update creator campaign

Updates any subset of the campaign's settings. `economics` (and with it the campaign type) can only change while the campaign is a draft; afterwards that answers 409, and a live campaign's budget is raised with `POST /v1/creator-campaigns/{campaignId}/budget`. An empty body answers 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CreatorCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Campaign ID.
update_creator_campaign_request = Zernio::UpdateCreatorCampaignRequest.new # UpdateCreatorCampaignRequest | 

begin
  # Update creator campaign
  result = api_instance.update_creator_campaign(campaign_id, update_creator_campaign_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->update_creator_campaign: #{e}"
end
```

#### Using the update_creator_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreatorCampaign201Response>, Integer, Hash)> update_creator_campaign_with_http_info(campaign_id, update_creator_campaign_request)

```ruby
begin
  # Update creator campaign
  data, status_code, headers = api_instance.update_creator_campaign_with_http_info(campaign_id, update_creator_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreatorCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CreatorCampaignsApi->update_creator_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Campaign ID. |  |
| **update_creator_campaign_request** | [**UpdateCreatorCampaignRequest**](UpdateCreatorCampaignRequest.md) |  |  |

### Return type

[**CreateCreatorCampaign201Response**](CreateCreatorCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

