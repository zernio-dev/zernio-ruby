# Zernio::WebhookEventsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**on_account_ads_initial_sync_completed**](WebhookEventsApi.md#on_account_ads_initial_sync_completed) | **POST** /account.ads.initial_sync_completed | Ads initial sync completed event |
| [**on_account_ads_sync_failed**](WebhookEventsApi.md#on_account_ads_sync_failed) | **POST** /account.ads.sync_failed | Ads sync failed event |
| [**on_account_ads_sync_recovered**](WebhookEventsApi.md#on_account_ads_sync_recovered) | **POST** /account.ads.sync_recovered | Ads sync recovered event |
| [**on_account_connected**](WebhookEventsApi.md#on_account_connected) | **POST** /account.connected | Account connected event |
| [**on_account_disconnected**](WebhookEventsApi.md#on_account_disconnected) | **POST** /account.disconnected | Account disconnected event |
| [**on_account_permissions_changed**](WebhookEventsApi.md#on_account_permissions_changed) | **POST** /account.permissions_changed | Account permissions changed event |
| [**on_account_rate_limited**](WebhookEventsApi.md#on_account_rate_limited) | **POST** /account.rate_limited | Mailbox sending cooldown started |
| [**on_ad_account_status_changed**](WebhookEventsApi.md#on_ad_account_status_changed) | **POST** /ad_account.status_changed | Ad account status changed event |
| [**on_ad_delivery_issue**](WebhookEventsApi.md#on_ad_delivery_issue) | **POST** /ad.delivery_issue | Ad delivery issue event |
| [**on_ad_review_approved**](WebhookEventsApi.md#on_ad_review_approved) | **POST** /ad.review.approved | Ad review approved event |
| [**on_ad_review_rejected**](WebhookEventsApi.md#on_ad_review_rejected) | **POST** /ad.review.rejected | Ad review rejected event |
| [**on_ad_rule_triggered**](WebhookEventsApi.md#on_ad_rule_triggered) | **POST** /ad_rule.triggered | Ad rule triggered event |
| [**on_ad_status_changed**](WebhookEventsApi.md#on_ad_status_changed) | **POST** /ad.status_changed | Ad status changed event |
| [**on_ad_video_processed**](WebhookEventsApi.md#on_ad_video_processed) | **POST** /ad.video.processed | Ad video processed event |
| [**on_analytics_synced**](WebhookEventsApi.md#on_analytics_synced) | **POST** /analytics.synced | Analytics synced event |
| [**on_api_changelog_published**](WebhookEventsApi.md#on_api_changelog_published) | **POST** /api.changelog.published | API changelog entry published event |
| [**on_branded_calling_identity_action_required**](WebhookEventsApi.md#on_branded_calling_identity_action_required) | **POST** /branded_calling.identity.action_required | Caller identity action required event |
| [**on_branded_calling_identity_status_updated**](WebhookEventsApi.md#on_branded_calling_identity_status_updated) | **POST** /branded_calling.identity.status_updated | Caller identity status updated event |
| [**on_branded_calling_number_status_updated**](WebhookEventsApi.md#on_branded_calling_number_status_updated) | **POST** /branded_calling.number.status_updated | Branded number status updated event |
| [**on_calendar_event_created**](WebhookEventsApi.md#on_calendar_event_created) | **POST** /calendar.event.created | Calendar event created |
| [**on_calendar_event_deleted**](WebhookEventsApi.md#on_calendar_event_deleted) | **POST** /calendar.event.deleted | Calendar event deleted |
| [**on_calendar_event_updated**](WebhookEventsApi.md#on_calendar_event_updated) | **POST** /calendar.event.updated | Calendar event updated |
| [**on_call_ended**](WebhookEventsApi.md#on_call_ended) | **POST** /call.ended | Call ended event |
| [**on_call_failed**](WebhookEventsApi.md#on_call_failed) | **POST** /call.failed | Call failed event |
| [**on_call_permission_request**](WebhookEventsApi.md#on_call_permission_request) | **POST** /call.permission_request | Call permission request reply event |
| [**on_call_received**](WebhookEventsApi.md#on_call_received) | **POST** /call.received | Call received event |
| [**on_campaign_budget_depleted**](WebhookEventsApi.md#on_campaign_budget_depleted) | **POST** /campaign.budget.depleted | Campaign budget depleted event |
| [**on_campaign_participant_joined**](WebhookEventsApi.md#on_campaign_participant_joined) | **POST** /campaign_participant.joined | Campaign participant joined event |
| [**on_campaign_participant_removed**](WebhookEventsApi.md#on_campaign_participant_removed) | **POST** /campaign_participant.removed | Campaign participant removed event |
| [**on_campaign_participant_suspended**](WebhookEventsApi.md#on_campaign_participant_suspended) | **POST** /campaign_participant.suspended | Campaign participant suspended event |
| [**on_campaign_payout_failed**](WebhookEventsApi.md#on_campaign_payout_failed) | **POST** /campaign_payout.failed | Campaign payout failed event |
| [**on_campaign_payout_payable**](WebhookEventsApi.md#on_campaign_payout_payable) | **POST** /campaign_payout.payable | Campaign payout payable event |
| [**on_campaign_payout_settled**](WebhookEventsApi.md#on_campaign_payout_settled) | **POST** /campaign_payout.settled | Campaign payout settled event |
| [**on_campaign_submission_approved**](WebhookEventsApi.md#on_campaign_submission_approved) | **POST** /campaign_submission.approved | Campaign submission approved event |
| [**on_campaign_submission_flagged**](WebhookEventsApi.md#on_campaign_submission_flagged) | **POST** /campaign_submission.flagged | Campaign submission flagged event |
| [**on_campaign_submission_pending_review**](WebhookEventsApi.md#on_campaign_submission_pending_review) | **POST** /campaign_submission.pending_review | Campaign submission pending review event |
| [**on_campaign_submission_received**](WebhookEventsApi.md#on_campaign_submission_received) | **POST** /campaign_submission.received | Campaign submission received event |
| [**on_campaign_submission_rejected**](WebhookEventsApi.md#on_campaign_submission_rejected) | **POST** /campaign_submission.rejected | Campaign submission rejected event |
| [**on_comment_received**](WebhookEventsApi.md#on_comment_received) | **POST** /comment.received | Comment received event |
| [**on_commerce_order_created**](WebhookEventsApi.md#on_commerce_order_created) | **POST** /commerce.order.created | Commerce order created event |
| [**on_commerce_order_refunded**](WebhookEventsApi.md#on_commerce_order_refunded) | **POST** /commerce.order.refunded | Commerce order refunded event |
| [**on_commerce_order_updated**](WebhookEventsApi.md#on_commerce_order_updated) | **POST** /commerce.order.updated | Commerce order updated event |
| [**on_commerce_product_created**](WebhookEventsApi.md#on_commerce_product_created) | **POST** /commerce.product.created | Commerce product created event |
| [**on_commerce_product_deleted**](WebhookEventsApi.md#on_commerce_product_deleted) | **POST** /commerce.product.deleted | Commerce product deleted event |
| [**on_commerce_product_updated**](WebhookEventsApi.md#on_commerce_product_updated) | **POST** /commerce.product.updated | Commerce product updated event |
| [**on_contact_deleted**](WebhookEventsApi.md#on_contact_deleted) | **POST** /contact.deleted | Contact deleted |
| [**on_contact_field_changed**](WebhookEventsApi.md#on_contact_field_changed) | **POST** /contact.field_changed | Contact field changed event |
| [**on_contact_tag_added**](WebhookEventsApi.md#on_contact_tag_added) | **POST** /contact.tag_added | Contact tag added event |
| [**on_contact_tag_removed**](WebhookEventsApi.md#on_contact_tag_removed) | **POST** /contact.tag_removed | Contact tag removed event |
| [**on_contact_updated**](WebhookEventsApi.md#on_contact_updated) | **POST** /contact.updated | Contact updated |
| [**on_conversation_control_changed**](WebhookEventsApi.md#on_conversation_control_changed) | **POST** /conversation.control_changed | Conversation control changed event |
| [**on_conversation_started**](WebhookEventsApi.md#on_conversation_started) | **POST** /conversation.started | Conversation started event |
| [**on_creator_campaign_budget_exhausted**](WebhookEventsApi.md#on_creator_campaign_budget_exhausted) | **POST** /creator_campaign.budget_exhausted | Creator campaign budget exhausted event |
| [**on_creator_campaign_closed**](WebhookEventsApi.md#on_creator_campaign_closed) | **POST** /creator_campaign.closed | Creator campaign closed event |
| [**on_file_created**](WebhookEventsApi.md#on_file_created) | **POST** /file.created | File created |
| [**on_file_deleted**](WebhookEventsApi.md#on_file_deleted) | **POST** /file.deleted | File deleted |
| [**on_file_picked**](WebhookEventsApi.md#on_file_picked) | **POST** /file.picked | Files picked |
| [**on_file_updated**](WebhookEventsApi.md#on_file_updated) | **POST** /file.updated | File updated |
| [**on_lead_received**](WebhookEventsApi.md#on_lead_received) | **POST** /lead.received | Lead received event |
| [**on_message_deleted**](WebhookEventsApi.md#on_message_deleted) | **POST** /message.deleted | Message deleted event |
| [**on_message_delivered**](WebhookEventsApi.md#on_message_delivered) | **POST** /message.delivered | Message delivered event |
| [**on_message_edited**](WebhookEventsApi.md#on_message_edited) | **POST** /message.edited | Message edited event |
| [**on_message_failed**](WebhookEventsApi.md#on_message_failed) | **POST** /message.failed | Message delivery failed event |
| [**on_message_played**](WebhookEventsApi.md#on_message_played) | **POST** /message.played | Message played event |
| [**on_message_read**](WebhookEventsApi.md#on_message_read) | **POST** /message.read | Message read event |
| [**on_message_received**](WebhookEventsApi.md#on_message_received) | **POST** /message.received | Message received event |
| [**on_message_sent**](WebhookEventsApi.md#on_message_sent) | **POST** /message.sent | Message sent event |
| [**on_phone_number_stock_available**](WebhookEventsApi.md#on_phone_number_stock_available) | **POST** /phone_number.stock_available | Phone-number stock available event |
| [**on_post_authenticity_changed**](WebhookEventsApi.md#on_post_authenticity_changed) | **POST** /post.authenticity_changed | Post authenticity changed event |
| [**on_post_cancelled**](WebhookEventsApi.md#on_post_cancelled) | **POST** /post.cancelled | Post cancelled event |
| [**on_post_external_created**](WebhookEventsApi.md#on_post_external_created) | **POST** /post.external.created | External post created event |
| [**on_post_external_deleted**](WebhookEventsApi.md#on_post_external_deleted) | **POST** /post.external.deleted | External post deleted event |
| [**on_post_external_updated**](WebhookEventsApi.md#on_post_external_updated) | **POST** /post.external.updated | External post updated event |
| [**on_post_failed**](WebhookEventsApi.md#on_post_failed) | **POST** /post.failed | Post failed event |
| [**on_post_partial**](WebhookEventsApi.md#on_post_partial) | **POST** /post.partial | Post partial event |
| [**on_post_platform_deleted**](WebhookEventsApi.md#on_post_platform_deleted) | **POST** /post.platform.deleted | Post platform deleted event |
| [**on_post_platform_failed**](WebhookEventsApi.md#on_post_platform_failed) | **POST** /post.platform.failed | Post platform failed event |
| [**on_post_platform_published**](WebhookEventsApi.md#on_post_platform_published) | **POST** /post.platform.published | Post platform published event |
| [**on_post_published**](WebhookEventsApi.md#on_post_published) | **POST** /post.published | Post published event |
| [**on_post_recycled**](WebhookEventsApi.md#on_post_recycled) | **POST** /post.recycled | Post recycled event |
| [**on_post_scheduled**](WebhookEventsApi.md#on_post_scheduled) | **POST** /post.scheduled | Post scheduled event |
| [**on_post_tik_tok_url_resolved**](WebhookEventsApi.md#on_post_tik_tok_url_resolved) | **POST** /post.tiktok.url_resolved | TikTok post URL resolved event |
| [**on_post_tracking_completed**](WebhookEventsApi.md#on_post_tracking_completed) | **POST** /post.tracking_completed | Post tracking completed event |
| [**on_rcs_agent_status_updated**](WebhookEventsApi.md#on_rcs_agent_status_updated) | **POST** /rcs.agent.status_updated | RCS agent status updated event |
| [**on_reaction_received**](WebhookEventsApi.md#on_reaction_received) | **POST** /reaction.received | Reaction received event |
| [**on_referral_received**](WebhookEventsApi.md#on_referral_received) | **POST** /referral.received | Referral received event |
| [**on_review_deleted**](WebhookEventsApi.md#on_review_deleted) | **POST** /review.deleted | Review deleted event |
| [**on_review_new**](WebhookEventsApi.md#on_review_new) | **POST** /review.new | Review new event |
| [**on_review_restored**](WebhookEventsApi.md#on_review_restored) | **POST** /review.restored | Review restored event |
| [**on_review_updated**](WebhookEventsApi.md#on_review_updated) | **POST** /review.updated | Review updated event |
| [**on_sequence_enrolled**](WebhookEventsApi.md#on_sequence_enrolled) | **POST** /sequence.enrolled | Sequence enrolled event |
| [**on_sequence_exited**](WebhookEventsApi.md#on_sequence_exited) | **POST** /sequence.exited | Sequence exited event |
| [**on_sms_registration_action_required**](WebhookEventsApi.md#on_sms_registration_action_required) | **POST** /sms.registration.action_required | SMS registration action required event |
| [**on_sms_registration_status_updated**](WebhookEventsApi.md#on_sms_registration_status_updated) | **POST** /sms.registration.status_updated | SMS registration status updated event |
| [**on_support_run_completed**](WebhookEventsApi.md#on_support_run_completed) | **POST** /support.run.completed | Support Assistant finished event |
| [**on_support_run_failed**](WebhookEventsApi.md#on_support_run_failed) | **POST** /support.run.failed | Support Assistant failed event |
| [**on_verification_approved**](WebhookEventsApi.md#on_verification_approved) | **POST** /verification.approved | Verification approved event |
| [**on_verification_failed**](WebhookEventsApi.md#on_verification_failed) | **POST** /verification.failed | Verification failed event |
| [**on_webhook_test**](WebhookEventsApi.md#on_webhook_test) | **POST** /webhook.test | Webhook test event |
| [**on_whats_app_account_alert_received**](WebhookEventsApi.md#on_whats_app_account_alert_received) | **POST** /whatsapp.account.alert_received | WhatsApp account alert received |
| [**on_whats_app_account_name_status_updated**](WebhookEventsApi.md#on_whats_app_account_name_status_updated) | **POST** /whatsapp.account.name_status_updated | WhatsApp display-name review outcome event |
| [**on_whats_app_account_quality_updated**](WebhookEventsApi.md#on_whats_app_account_quality_updated) | **POST** /whatsapp.account.quality_updated | WhatsApp quality rating or messaging limit changed |
| [**on_whats_app_account_status_updated**](WebhookEventsApi.md#on_whats_app_account_status_updated) | **POST** /whatsapp.account.status_updated | WhatsApp Business Account restricted or reinstated |
| [**on_whats_app_automatic_event**](WebhookEventsApi.md#on_whats_app_automatic_event) | **POST** /whatsapp.automatic_event | WhatsApp automatic event detected |
| [**on_whats_app_contact_identity_changed**](WebhookEventsApi.md#on_whats_app_contact_identity_changed) | **POST** /whatsapp.contact.identity_changed | WhatsApp contact identity changed event |
| [**on_whats_app_number_action_required**](WebhookEventsApi.md#on_whats_app_number_action_required) | **POST** /whatsapp.number.action_required | WhatsApp number action required event |
| [**on_whats_app_number_activated**](WebhookEventsApi.md#on_whats_app_number_activated) | **POST** /whatsapp.number.activated | WhatsApp number activated event |
| [**on_whats_app_number_declined**](WebhookEventsApi.md#on_whats_app_number_declined) | **POST** /whatsapp.number.declined | WhatsApp number declined event |
| [**on_whats_app_number_kyc_submitted**](WebhookEventsApi.md#on_whats_app_number_kyc_submitted) | **POST** /whatsapp.number.kyc_submitted | WhatsApp number KYC submitted event |
| [**on_whats_app_number_reactivated**](WebhookEventsApi.md#on_whats_app_number_reactivated) | **POST** /whatsapp.number.reactivated | WhatsApp number reactivated event |
| [**on_whats_app_number_released**](WebhookEventsApi.md#on_whats_app_number_released) | **POST** /whatsapp.number.released | WhatsApp number released event |
| [**on_whats_app_number_suspended**](WebhookEventsApi.md#on_whats_app_number_suspended) | **POST** /whatsapp.number.suspended | WhatsApp number suspended event |
| [**on_whats_app_number_verification_required**](WebhookEventsApi.md#on_whats_app_number_verification_required) | **POST** /whatsapp.number.verification_required | WhatsApp number verification-required event |
| [**on_whats_app_template_category_updated**](WebhookEventsApi.md#on_whats_app_template_category_updated) | **POST** /whatsapp.template.category_updated | WhatsApp template category updated event |
| [**on_whats_app_template_status_updated**](WebhookEventsApi.md#on_whats_app_template_status_updated) | **POST** /whatsapp.template.status_updated | WhatsApp template status updated event |
| [**on_workflow_run_completed**](WebhookEventsApi.md#on_workflow_run_completed) | **POST** /workflow.run.completed | Workflow run completed event |
| [**on_workflow_run_failed**](WebhookEventsApi.md#on_workflow_run_failed) | **POST** /workflow.run.failed | Workflow run failed event |
| [**on_workflow_run_started**](WebhookEventsApi.md#on_workflow_run_started) | **POST** /workflow.run.started | Workflow run started event |


## on_account_ads_initial_sync_completed

> on_account_ads_initial_sync_completed(webhook_payload_account_ads_initial_sync_completed)

Ads initial sync completed event

Fired once per ads-enabled account when the initial sync (ad-account discovery + 90-day historical ad backfill) completes. The `sync` block reports whether the backfill succeeded and how many ads were synced. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_ads_initial_sync_completed =  # WebhookPayloadAccountAdsInitialSyncCompleted | 

begin
  # Ads initial sync completed event
  api_instance.on_account_ads_initial_sync_completed(webhook_payload_account_ads_initial_sync_completed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_initial_sync_completed: #{e}"
end
```

#### Using the on_account_ads_initial_sync_completed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_ads_initial_sync_completed_with_http_info(webhook_payload_account_ads_initial_sync_completed)

```ruby
begin
  # Ads initial sync completed event
  data, status_code, headers = api_instance.on_account_ads_initial_sync_completed_with_http_info(webhook_payload_account_ads_initial_sync_completed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_initial_sync_completed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_ads_initial_sync_completed** | [**WebhookPayloadAccountAdsInitialSyncCompleted**](WebhookPayloadAccountAdsInitialSyncCompleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_ads_sync_failed

> on_account_ads_sync_failed(webhook_payload_account_ads_sync_failed)

Ads sync failed event

Fired once per ad account when its ads stop syncing (no successful sync for 24 hours, or every live ad at the retry cap). Checked hourly. Metrics for the ad account are stale until `account.ads.sync_recovered` fires for it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_ads_sync_failed =  # WebhookPayloadAccountAdsSyncFailed | 

begin
  # Ads sync failed event
  api_instance.on_account_ads_sync_failed(webhook_payload_account_ads_sync_failed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_sync_failed: #{e}"
end
```

#### Using the on_account_ads_sync_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_ads_sync_failed_with_http_info(webhook_payload_account_ads_sync_failed)

```ruby
begin
  # Ads sync failed event
  data, status_code, headers = api_instance.on_account_ads_sync_failed_with_http_info(webhook_payload_account_ads_sync_failed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_sync_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_ads_sync_failed** | [**WebhookPayloadAccountAdsSyncFailed**](WebhookPayloadAccountAdsSyncFailed.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_ads_sync_recovered

> on_account_ads_sync_recovered(webhook_payload_account_ads_sync_recovered)

Ads sync recovered event

Fired once when an ad account previously reported by `account.ads.sync_failed` syncs successfully again. Checked hourly. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_ads_sync_recovered =  # WebhookPayloadAccountAdsSyncRecovered | 

begin
  # Ads sync recovered event
  api_instance.on_account_ads_sync_recovered(webhook_payload_account_ads_sync_recovered)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_sync_recovered: #{e}"
end
```

#### Using the on_account_ads_sync_recovered_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_ads_sync_recovered_with_http_info(webhook_payload_account_ads_sync_recovered)

```ruby
begin
  # Ads sync recovered event
  data, status_code, headers = api_instance.on_account_ads_sync_recovered_with_http_info(webhook_payload_account_ads_sync_recovered)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_ads_sync_recovered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_ads_sync_recovered** | [**WebhookPayloadAccountAdsSyncRecovered**](WebhookPayloadAccountAdsSyncRecovered.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_connected

> on_account_connected(webhook_payload_account_connected)

Account connected event

Fired when a account is successfully connected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_connected =  # WebhookPayloadAccountConnected | 

begin
  # Account connected event
  api_instance.on_account_connected(webhook_payload_account_connected)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_connected: #{e}"
end
```

#### Using the on_account_connected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_connected_with_http_info(webhook_payload_account_connected)

```ruby
begin
  # Account connected event
  data, status_code, headers = api_instance.on_account_connected_with_http_info(webhook_payload_account_connected)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_connected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_connected** | [**WebhookPayloadAccountConnected**](WebhookPayloadAccountConnected.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_disconnected

> on_account_disconnected(webhook_payload_account_disconnected)

Account disconnected event

Fired when a connected account becomes disconnected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_disconnected =  # WebhookPayloadAccountDisconnected | 

begin
  # Account disconnected event
  api_instance.on_account_disconnected(webhook_payload_account_disconnected)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_disconnected: #{e}"
end
```

#### Using the on_account_disconnected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_disconnected_with_http_info(webhook_payload_account_disconnected)

```ruby
begin
  # Account disconnected event
  data, status_code, headers = api_instance.on_account_disconnected_with_http_info(webhook_payload_account_disconnected)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_disconnected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_disconnected** | [**WebhookPayloadAccountDisconnected**](WebhookPayloadAccountDisconnected.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_permissions_changed

> on_account_permissions_changed(webhook_payload_account_permissions_changed)

Account permissions changed event

Fired when a publish on an account connected through your own OAuth app fails for a missing permission. The account stays connected; only the missing area stops working until the permission is granted and the account reconnected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_permissions_changed =  # WebhookPayloadAccountPermissionsChanged | 

begin
  # Account permissions changed event
  api_instance.on_account_permissions_changed(webhook_payload_account_permissions_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_permissions_changed: #{e}"
end
```

#### Using the on_account_permissions_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_permissions_changed_with_http_info(webhook_payload_account_permissions_changed)

```ruby
begin
  # Account permissions changed event
  data, status_code, headers = api_instance.on_account_permissions_changed_with_http_info(webhook_payload_account_permissions_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_permissions_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_permissions_changed** | [**WebhookPayloadAccountPermissionsChanged**](WebhookPayloadAccountPermissionsChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_rate_limited

> on_account_rate_limited(webhook_payload_account_rate_limited)

Mailbox sending cooldown started

Fired when a Google or Microsoft mailbox enters a sending cooldown (same body to more than 50 recipients in an hour, or a later trigger). Sends answer 429 until `account.resetsAt`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_account_rate_limited =  # WebhookPayloadAccountRateLimited | 

begin
  # Mailbox sending cooldown started
  api_instance.on_account_rate_limited(webhook_payload_account_rate_limited)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_rate_limited: #{e}"
end
```

#### Using the on_account_rate_limited_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_rate_limited_with_http_info(webhook_payload_account_rate_limited)

```ruby
begin
  # Mailbox sending cooldown started
  data, status_code, headers = api_instance.on_account_rate_limited_with_http_info(webhook_payload_account_rate_limited)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_rate_limited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_rate_limited** | [**WebhookPayloadAccountRateLimited**](WebhookPayloadAccountRateLimited.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_account_status_changed

> on_ad_account_status_changed(webhook_payload_ad_account_status_changed)

Ad account status changed event

Fired when an ad account Zernio already tracked changes status (Meta, Google, TikTok, X). See `WebhookPayloadAdAccountStatusChanged` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_account_status_changed =  # WebhookPayloadAdAccountStatusChanged | 

begin
  # Ad account status changed event
  api_instance.on_ad_account_status_changed(webhook_payload_ad_account_status_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_account_status_changed: #{e}"
end
```

#### Using the on_ad_account_status_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_account_status_changed_with_http_info(webhook_payload_ad_account_status_changed)

```ruby
begin
  # Ad account status changed event
  data, status_code, headers = api_instance.on_ad_account_status_changed_with_http_info(webhook_payload_ad_account_status_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_account_status_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_account_status_changed** | [**WebhookPayloadAdAccountStatusChanged**](WebhookPayloadAdAccountStatusChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_delivery_issue

> on_ad_delivery_issue(webhook_payload_ad_delivery_issue)

Ad delivery issue event

Fired when an ad Zernio already tracked stops delivering for a platform reason (Meta, TikTok, LinkedIn). See `WebhookPayloadAdDeliveryIssue` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_delivery_issue =  # WebhookPayloadAdDeliveryIssue | 

begin
  # Ad delivery issue event
  api_instance.on_ad_delivery_issue(webhook_payload_ad_delivery_issue)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_delivery_issue: #{e}"
end
```

#### Using the on_ad_delivery_issue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_delivery_issue_with_http_info(webhook_payload_ad_delivery_issue)

```ruby
begin
  # Ad delivery issue event
  data, status_code, headers = api_instance.on_ad_delivery_issue_with_http_info(webhook_payload_ad_delivery_issue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_delivery_issue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_delivery_issue** | [**WebhookPayloadAdDeliveryIssue**](WebhookPayloadAdDeliveryIssue.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_review_approved

> on_ad_review_approved(webhook_payload_ad_review)

Ad review approved event

Fired when an ad Zernio already tracked passes platform review, or a rejection is overturned on appeal. Every ad network. See `WebhookPayloadAdReview` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_review =  # WebhookPayloadAdReview | 

begin
  # Ad review approved event
  api_instance.on_ad_review_approved(webhook_payload_ad_review)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_review_approved: #{e}"
end
```

#### Using the on_ad_review_approved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_review_approved_with_http_info(webhook_payload_ad_review)

```ruby
begin
  # Ad review approved event
  data, status_code, headers = api_instance.on_ad_review_approved_with_http_info(webhook_payload_ad_review)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_review_approved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_review** | [**WebhookPayloadAdReview**](WebhookPayloadAdReview.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_review_rejected

> on_ad_review_rejected(webhook_payload_ad_review)

Ad review rejected event

Fired when the platform rejects an ad Zernio already tracked. Every ad network. See `WebhookPayloadAdReview` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_review =  # WebhookPayloadAdReview | 

begin
  # Ad review rejected event
  api_instance.on_ad_review_rejected(webhook_payload_ad_review)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_review_rejected: #{e}"
end
```

#### Using the on_ad_review_rejected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_review_rejected_with_http_info(webhook_payload_ad_review)

```ruby
begin
  # Ad review rejected event
  data, status_code, headers = api_instance.on_ad_review_rejected_with_http_info(webhook_payload_ad_review)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_review_rejected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_review** | [**WebhookPayloadAdReview**](WebhookPayloadAdReview.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_rule_triggered

> on_ad_rule_triggered(webhook_payload_ad_rule_triggered)

Ad rule triggered event

Fired when a scheduled ad rule run finds campaigns or ad sets meeting every condition, once per object per cooldown. See `WebhookPayloadAdRuleTriggered` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_rule_triggered =  # WebhookPayloadAdRuleTriggered | 

begin
  # Ad rule triggered event
  api_instance.on_ad_rule_triggered(webhook_payload_ad_rule_triggered)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_rule_triggered: #{e}"
end
```

#### Using the on_ad_rule_triggered_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_rule_triggered_with_http_info(webhook_payload_ad_rule_triggered)

```ruby
begin
  # Ad rule triggered event
  data, status_code, headers = api_instance.on_ad_rule_triggered_with_http_info(webhook_payload_ad_rule_triggered)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_rule_triggered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_rule_triggered** | [**WebhookPayloadAdRuleTriggered**](WebhookPayloadAdRuleTriggered.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_status_changed

> on_ad_status_changed(webhook_payload_ad_status_changed)

Ad status changed event

Fired when a campaign, ad set, or ad on a connected ad platform changes status. Currently emitted only for Meta (`metaads`).  It subscribes to two Meta `ad_account` webhook fields:  - `in_process_ad_objects`: the ad object finished processing and exited the `IN_PROCESS` state. `status.raw` carries Meta's `status_name` (e.g. `ACTIVE`, `PAUSED`, `ARCHIVED`, `DELETED`). - `with_issues_ad_objects`: the ad object entered the `WITH_ISSUES` state. `status.raw` is `WITH_ISSUES` and the `error` block is populated from Meta's `error_code` / `error_summary` / `error_message`.  `adObject.level` mirrors Meta's `level` and is one of `CAMPAIGN`, `AD_SET`, or `AD`. Creative-level events are not forwarded.  Branch on `status.raw` to handle each transition. Use `error.code` (when present) as the stable discriminator, since `error.summary` and `error.message` are localized to the ad-account owner's Meta locale.  The `error` block is optional:  - It is present on most `WITH_ISSUES` events but can be absent (Meta does not always include diagnostics). - It is never present on any other status. - Always null-check `error` before reading `error.code`.  **Fan-out:** matching is keyed on `adObject.platformAdAccountId`. When multiple connected Zernio `metaads` accounts are linked to the same Meta ad account, each receives its own delivery. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_status_changed =  # WebhookPayloadAdStatusChanged | 

begin
  # Ad status changed event
  api_instance.on_ad_status_changed(webhook_payload_ad_status_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_status_changed: #{e}"
end
```

#### Using the on_ad_status_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_status_changed_with_http_info(webhook_payload_ad_status_changed)

```ruby
begin
  # Ad status changed event
  data, status_code, headers = api_instance.on_ad_status_changed_with_http_info(webhook_payload_ad_status_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_status_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_status_changed** | [**WebhookPayloadAdStatusChanged**](WebhookPayloadAdStatusChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_ad_video_processed

> on_ad_video_processed(webhook_payload_ad_video_processed)

Ad video processed event

Fired once per `POST /v1/ads/videos` call made with `async: true`, when Meta finishes processing the uploaded video. `video.status` is `ready` (reference it as `video.id` on the create endpoints) or `error` (Meta could not process it; `video.error` carries the reason).  Zernio watches the video for up to about 13 minutes after the upload request. A video still processing after that sends no event, so keep `GET /v1/ads/videos/{videoId}` as the source of truth for long videos. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_ad_video_processed =  # WebhookPayloadAdVideoProcessed | 

begin
  # Ad video processed event
  api_instance.on_ad_video_processed(webhook_payload_ad_video_processed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_video_processed: #{e}"
end
```

#### Using the on_ad_video_processed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_ad_video_processed_with_http_info(webhook_payload_ad_video_processed)

```ruby
begin
  # Ad video processed event
  data, status_code, headers = api_instance.on_ad_video_processed_with_http_info(webhook_payload_ad_video_processed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_ad_video_processed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_ad_video_processed** | [**WebhookPayloadAdVideoProcessed**](WebhookPayloadAdVideoProcessed.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_analytics_synced

> on_analytics_synced(webhook_payload_analytics_synced)

Analytics synced event

Fired once per connected account each time its analytics sync cycle completes successfully. Poll-driven (roughly hourly per account), not real-time, and never fired for a skipped or failed cycle.  A trigger, not a transport: the payload carries no metrics and no cursor. On receipt, call `GET /v1/analytics/delta` with your own last `nextCursor` to read every post whose analytics changed, across every account, in one paginated stream instead of polling analytics once per account.  The feed holds back its most recent few seconds of writes, so a read issued the instant this event lands often returns an empty page for that account. Poll again with the same cursor rather than reading an empty page as \"nothing changed\".  High volume (roughly one delivery per connected account per hour). Subscribe to it on a dedicated webhook endpoint: a subscription's consecutive-failure count is shared across all of its events, so an outage while this event is flowing can suppress the low-volume publishing events on the same subscription. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_analytics_synced =  # WebhookPayloadAnalyticsSynced | 

begin
  # Analytics synced event
  api_instance.on_analytics_synced(webhook_payload_analytics_synced)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_analytics_synced: #{e}"
end
```

#### Using the on_analytics_synced_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_analytics_synced_with_http_info(webhook_payload_analytics_synced)

```ruby
begin
  # Analytics synced event
  data, status_code, headers = api_instance.on_analytics_synced_with_http_info(webhook_payload_analytics_synced)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_analytics_synced_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_analytics_synced** | [**WebhookPayloadAnalyticsSynced**](WebhookPayloadAnalyticsSynced.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_api_changelog_published

> on_api_changelog_published(webhook_payload_api_changelog_published)

API changelog entry published event

Fired when an entry is published to the API changelog (https://docs.zernio.com/changelog), which happens when a change to this OpenAPI spec goes live.  The event belongs to no profile or account. Every active subscription that opted in receives it; scoped subscriptions (`profileIds` / `accountIds`) do not.  - `entry.changes` is the deterministic diff of the spec (operations and schemas added, removed and modified). - `entry.impact` says whether an existing integration must act (`action_required`), only gained something (`additive`) or nothing changed beyond descriptions (`none`). - `entry.message` is the written announcement.  Act on `impact` and `changes`; read `message` for the why. Entries are listed by `GET /v1/changelog`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_api_changelog_published =  # WebhookPayloadApiChangelogPublished | 

begin
  # API changelog entry published event
  api_instance.on_api_changelog_published(webhook_payload_api_changelog_published)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_api_changelog_published: #{e}"
end
```

#### Using the on_api_changelog_published_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_api_changelog_published_with_http_info(webhook_payload_api_changelog_published)

```ruby
begin
  # API changelog entry published event
  data, status_code, headers = api_instance.on_api_changelog_published_with_http_info(webhook_payload_api_changelog_published)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_api_changelog_published_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_api_changelog_published** | [**WebhookPayloadApiChangelogPublished**](WebhookPayloadApiChangelogPublished.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_branded_calling_identity_action_required

> on_branded_calling_identity_action_required(on_branded_calling_identity_action_required_request)

Caller identity action required event

Fired when a caller identity waits on you. `reason` says what:  - `changes_requested`: answer the review with PATCH. - `email_code`: the authorizer got a 6-digit code from the carrier. Confirm it with the verify-email endpoint. - `rejected`: the carrier rejected it. Fix and PATCH. - `infringement_claim`: a third party disputes the name or logo. Reply to our email with evidence. - `expired`: resubmit. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_branded_calling_identity_action_required_request =  # OnBrandedCallingIdentityActionRequiredRequest | 

begin
  # Caller identity action required event
  api_instance.on_branded_calling_identity_action_required(on_branded_calling_identity_action_required_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_identity_action_required: #{e}"
end
```

#### Using the on_branded_calling_identity_action_required_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_branded_calling_identity_action_required_with_http_info(on_branded_calling_identity_action_required_request)

```ruby
begin
  # Caller identity action required event
  data, status_code, headers = api_instance.on_branded_calling_identity_action_required_with_http_info(on_branded_calling_identity_action_required_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_identity_action_required_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_branded_calling_identity_action_required_request** | [**OnBrandedCallingIdentityActionRequiredRequest**](OnBrandedCallingIdentityActionRequiredRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_branded_calling_identity_status_updated

> on_branded_calling_identity_status_updated(on_branded_calling_identity_status_updated_request)

Caller identity status updated event

Fired on every status change of a Branded Calling caller identity:  - `requested`: a new submission or resubmit, in our review. - `changes_requested`: we need answers, see `branded_calling.identity.action_required`. - `rejected`: by our review or by the carrier. `reason` says why. - `pending_email_verification`: filed with the carrier; the authorizer enters the emailed code. - `in_review`: carrier vetting. - `verified`: live for a year, attach numbers. - `suspended`: an infringement claim is open. - `expired`. - `permanently_rejected`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_branded_calling_identity_status_updated_request =  # OnBrandedCallingIdentityStatusUpdatedRequest | 

begin
  # Caller identity status updated event
  api_instance.on_branded_calling_identity_status_updated(on_branded_calling_identity_status_updated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_identity_status_updated: #{e}"
end
```

#### Using the on_branded_calling_identity_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_branded_calling_identity_status_updated_with_http_info(on_branded_calling_identity_status_updated_request)

```ruby
begin
  # Caller identity status updated event
  data, status_code, headers = api_instance.on_branded_calling_identity_status_updated_with_http_info(on_branded_calling_identity_status_updated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_identity_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_branded_calling_identity_status_updated_request** | [**OnBrandedCallingIdentityStatusUpdatedRequest**](OnBrandedCallingIdentityStatusUpdatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_branded_calling_number_status_updated

> on_branded_calling_number_status_updated(on_branded_calling_number_status_updated_request)

Branded number status updated event

Fired when a number attached to a caller identity changes vetting status: `in_review`, `verified` (calls from it now show the identity), `unsuccessful` (refused; detach and re-add to retry), `suspended`, `expired` or `permanently_rejected` (can never be branded again). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_branded_calling_number_status_updated_request =  # OnBrandedCallingNumberStatusUpdatedRequest | 

begin
  # Branded number status updated event
  api_instance.on_branded_calling_number_status_updated(on_branded_calling_number_status_updated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_number_status_updated: #{e}"
end
```

#### Using the on_branded_calling_number_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_branded_calling_number_status_updated_with_http_info(on_branded_calling_number_status_updated_request)

```ruby
begin
  # Branded number status updated event
  data, status_code, headers = api_instance.on_branded_calling_number_status_updated_with_http_info(on_branded_calling_number_status_updated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_branded_calling_number_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_branded_calling_number_status_updated_request** | [**OnBrandedCallingNumberStatusUpdatedRequest**](OnBrandedCallingNumberStatusUpdatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_calendar_event_created

> on_calendar_event_created(webhook_payload_calendar_event)

Calendar event created

A new event appeared on a connected Microsoft calendar (push, seconds after the change).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_calendar_event =  # WebhookPayloadCalendarEvent | 

begin
  # Calendar event created
  api_instance.on_calendar_event_created(webhook_payload_calendar_event)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_created: #{e}"
end
```

#### Using the on_calendar_event_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_calendar_event_created_with_http_info(webhook_payload_calendar_event)

```ruby
begin
  # Calendar event created
  data, status_code, headers = api_instance.on_calendar_event_created_with_http_info(webhook_payload_calendar_event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_calendar_event** | [**WebhookPayloadCalendarEvent**](WebhookPayloadCalendarEvent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_calendar_event_deleted

> on_calendar_event_deleted(webhook_payload_calendar_event)

Calendar event deleted

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_calendar_event =  # WebhookPayloadCalendarEvent | 

begin
  # Calendar event deleted
  api_instance.on_calendar_event_deleted(webhook_payload_calendar_event)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_deleted: #{e}"
end
```

#### Using the on_calendar_event_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_calendar_event_deleted_with_http_info(webhook_payload_calendar_event)

```ruby
begin
  # Calendar event deleted
  data, status_code, headers = api_instance.on_calendar_event_deleted_with_http_info(webhook_payload_calendar_event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_calendar_event** | [**WebhookPayloadCalendarEvent**](WebhookPayloadCalendarEvent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_calendar_event_updated

> on_calendar_event_updated(webhook_payload_calendar_event)

Calendar event updated

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_calendar_event =  # WebhookPayloadCalendarEvent | 

begin
  # Calendar event updated
  api_instance.on_calendar_event_updated(webhook_payload_calendar_event)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_updated: #{e}"
end
```

#### Using the on_calendar_event_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_calendar_event_updated_with_http_info(webhook_payload_calendar_event)

```ruby
begin
  # Calendar event updated
  data, status_code, headers = api_instance.on_calendar_event_updated_with_http_info(webhook_payload_calendar_event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_calendar_event_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_calendar_event** | [**WebhookPayloadCalendarEvent**](WebhookPayloadCalendarEvent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_call_ended

> on_call_ended(webhook_payload_call_ended)

Call ended event

Fired on call hangup with the duration and a zero-markup billing breakdown (Meta cost, Telnyx cost, recording surcharge, total). Costs are pass-through; no margin is applied. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_call_ended =  # WebhookPayloadCallEnded | 

begin
  # Call ended event
  api_instance.on_call_ended(webhook_payload_call_ended)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_ended: #{e}"
end
```

#### Using the on_call_ended_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_call_ended_with_http_info(webhook_payload_call_ended)

```ruby
begin
  # Call ended event
  data, status_code, headers = api_instance.on_call_ended_with_http_info(webhook_payload_call_ended)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_ended_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_call_ended** | [**WebhookPayloadCallEnded**](WebhookPayloadCallEnded.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_call_failed

> on_call_failed(webhook_payload_call_failed)

Call failed event

Fired when a call setup or in-progress call fails (Meta rejected the connect, Telnyx returned an error, etc.). Payload carries the upstream error code and message. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_call_failed =  # WebhookPayloadCallFailed | 

begin
  # Call failed event
  api_instance.on_call_failed(webhook_payload_call_failed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_failed: #{e}"
end
```

#### Using the on_call_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_call_failed_with_http_info(webhook_payload_call_failed)

```ruby
begin
  # Call failed event
  data, status_code, headers = api_instance.on_call_failed_with_http_info(webhook_payload_call_failed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_call_failed** | [**WebhookPayloadCallFailed**](WebhookPayloadCallFailed.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_call_permission_request

> on_call_permission_request(webhook_payload_call_permission_request)

Call permission request reply event

Fired when a consumer replies to a `call_permission_request` interactive message (or its marketing-template variant). Carries the response (`accept` / `reject`), whether the grant is permanent, and the expiration timestamp when it is temporary. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_call_permission_request =  # WebhookPayloadCallPermissionRequest | 

begin
  # Call permission request reply event
  api_instance.on_call_permission_request(webhook_payload_call_permission_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_permission_request: #{e}"
end
```

#### Using the on_call_permission_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_call_permission_request_with_http_info(webhook_payload_call_permission_request)

```ruby
begin
  # Call permission request reply event
  data, status_code, headers = api_instance.on_call_permission_request_with_http_info(webhook_payload_call_permission_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_permission_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_call_permission_request** | [**WebhookPayloadCallPermissionRequest**](WebhookPayloadCallPermissionRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_call_received

> on_call_received(webhook_payload_call_received)

Call received event

Fired when a WhatsApp Business Call connects. For inbound (UIC) calls the event fires at the moment our Telnyx trunk bridges the consumer leg to the customer&apos;s forward-to destination; for outbound (BIC) calls it fires immediately after Meta accepts the connect. Branch on `call.direction` to distinguish. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_call_received =  # WebhookPayloadCallReceived | 

begin
  # Call received event
  api_instance.on_call_received(webhook_payload_call_received)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_received: #{e}"
end
```

#### Using the on_call_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_call_received_with_http_info(webhook_payload_call_received)

```ruby
begin
  # Call received event
  data, status_code, headers = api_instance.on_call_received_with_http_info(webhook_payload_call_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_call_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_call_received** | [**WebhookPayloadCallReceived**](WebhookPayloadCallReceived.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_budget_depleted

> on_campaign_budget_depleted(webhook_payload_campaign_budget_depleted)

Campaign budget depleted event

Fired when a campaign Zernio already tracked runs out of budget (TikTok). See `WebhookPayloadCampaignBudgetDepleted` for when it fires and when it does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_budget_depleted =  # WebhookPayloadCampaignBudgetDepleted | 

begin
  # Campaign budget depleted event
  api_instance.on_campaign_budget_depleted(webhook_payload_campaign_budget_depleted)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_budget_depleted: #{e}"
end
```

#### Using the on_campaign_budget_depleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_budget_depleted_with_http_info(webhook_payload_campaign_budget_depleted)

```ruby
begin
  # Campaign budget depleted event
  data, status_code, headers = api_instance.on_campaign_budget_depleted_with_http_info(webhook_payload_campaign_budget_depleted)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_budget_depleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_budget_depleted** | [**WebhookPayloadCampaignBudgetDepleted**](WebhookPayloadCampaignBudgetDepleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_participant_joined

> on_campaign_participant_joined(webhook_payload_campaign_participant)

Campaign participant joined event

Fired once when a creator joins a campaign, from their invite link or the open link.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_participant =  # WebhookPayloadCampaignParticipant | 

begin
  # Campaign participant joined event
  api_instance.on_campaign_participant_joined(webhook_payload_campaign_participant)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_joined: #{e}"
end
```

#### Using the on_campaign_participant_joined_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_participant_joined_with_http_info(webhook_payload_campaign_participant)

```ruby
begin
  # Campaign participant joined event
  data, status_code, headers = api_instance.on_campaign_participant_joined_with_http_info(webhook_payload_campaign_participant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_joined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_participant** | [**WebhookPayloadCampaignParticipant**](WebhookPayloadCampaignParticipant.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_participant_removed

> on_campaign_participant_removed(webhook_payload_campaign_participant)

Campaign participant removed event

Fired when an operator removes a participant.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_participant =  # WebhookPayloadCampaignParticipant | 

begin
  # Campaign participant removed event
  api_instance.on_campaign_participant_removed(webhook_payload_campaign_participant)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_removed: #{e}"
end
```

#### Using the on_campaign_participant_removed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_participant_removed_with_http_info(webhook_payload_campaign_participant)

```ruby
begin
  # Campaign participant removed event
  data, status_code, headers = api_instance.on_campaign_participant_removed_with_http_info(webhook_payload_campaign_participant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_removed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_participant** | [**WebhookPayloadCampaignParticipant**](WebhookPayloadCampaignParticipant.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_participant_suspended

> on_campaign_participant_suspended(webhook_payload_campaign_participant)

Campaign participant suspended event

Fired when an operator suspends a participant.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_participant =  # WebhookPayloadCampaignParticipant | 

begin
  # Campaign participant suspended event
  api_instance.on_campaign_participant_suspended(webhook_payload_campaign_participant)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_suspended: #{e}"
end
```

#### Using the on_campaign_participant_suspended_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_participant_suspended_with_http_info(webhook_payload_campaign_participant)

```ruby
begin
  # Campaign participant suspended event
  data, status_code, headers = api_instance.on_campaign_participant_suspended_with_http_info(webhook_payload_campaign_participant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_participant_suspended_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_participant** | [**WebhookPayloadCampaignParticipant**](WebhookPayloadCampaignParticipant.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_payout_failed

> on_campaign_payout_failed(webhook_payload_campaign_payout)

Campaign payout failed event

Fired when a treasury payout to a participant is refused, cannot be confirmed, or is reversed. The amount returns to payable, minus anything a rejection claws back.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_payout =  # WebhookPayloadCampaignPayout | 

begin
  # Campaign payout failed event
  api_instance.on_campaign_payout_failed(webhook_payload_campaign_payout)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_failed: #{e}"
end
```

#### Using the on_campaign_payout_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_payout_failed_with_http_info(webhook_payload_campaign_payout)

```ruby
begin
  # Campaign payout failed event
  data, status_code, headers = api_instance.on_campaign_payout_failed_with_http_info(webhook_payload_campaign_payout)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_payout** | [**WebhookPayloadCampaignPayout**](WebhookPayloadCampaignPayout.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_payout_payable

> on_campaign_payout_payable(webhook_payload_campaign_payout)

Campaign payout payable event

Fired when a participant's held earnings mature and become payable.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_payout =  # WebhookPayloadCampaignPayout | 

begin
  # Campaign payout payable event
  api_instance.on_campaign_payout_payable(webhook_payload_campaign_payout)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_payable: #{e}"
end
```

#### Using the on_campaign_payout_payable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_payout_payable_with_http_info(webhook_payload_campaign_payout)

```ruby
begin
  # Campaign payout payable event
  data, status_code, headers = api_instance.on_campaign_payout_payable_with_http_info(webhook_payload_campaign_payout)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_payable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_payout** | [**WebhookPayloadCampaignPayout**](WebhookPayloadCampaignPayout.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_payout_settled

> on_campaign_payout_settled(webhook_payload_campaign_payout)

Campaign payout settled event

Fired when a settlement to a participant is recorded.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_payout =  # WebhookPayloadCampaignPayout | 

begin
  # Campaign payout settled event
  api_instance.on_campaign_payout_settled(webhook_payload_campaign_payout)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_settled: #{e}"
end
```

#### Using the on_campaign_payout_settled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_payout_settled_with_http_info(webhook_payload_campaign_payout)

```ruby
begin
  # Campaign payout settled event
  data, status_code, headers = api_instance.on_campaign_payout_settled_with_http_info(webhook_payload_campaign_payout)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_payout_settled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_payout** | [**WebhookPayloadCampaignPayout**](WebhookPayloadCampaignPayout.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_submission_approved

> on_campaign_submission_approved(webhook_payload_campaign_submission)

Campaign submission approved event

Fired when an operator approves a submission.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_submission =  # WebhookPayloadCampaignSubmission | 

begin
  # Campaign submission approved event
  api_instance.on_campaign_submission_approved(webhook_payload_campaign_submission)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_approved: #{e}"
end
```

#### Using the on_campaign_submission_approved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_submission_approved_with_http_info(webhook_payload_campaign_submission)

```ruby
begin
  # Campaign submission approved event
  data, status_code, headers = api_instance.on_campaign_submission_approved_with_http_info(webhook_payload_campaign_submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_approved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_submission** | [**WebhookPayloadCampaignSubmission**](WebhookPayloadCampaignSubmission.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_submission_flagged

> on_campaign_submission_flagged(webhook_payload_campaign_submission)

Campaign submission flagged event

Fired when a submission gains a fraud flag it did not carry before, at submission or on a later sync.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_submission =  # WebhookPayloadCampaignSubmission | 

begin
  # Campaign submission flagged event
  api_instance.on_campaign_submission_flagged(webhook_payload_campaign_submission)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_flagged: #{e}"
end
```

#### Using the on_campaign_submission_flagged_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_submission_flagged_with_http_info(webhook_payload_campaign_submission)

```ruby
begin
  # Campaign submission flagged event
  data, status_code, headers = api_instance.on_campaign_submission_flagged_with_http_info(webhook_payload_campaign_submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_flagged_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_submission** | [**WebhookPayloadCampaignSubmission**](WebhookPayloadCampaignSubmission.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_submission_pending_review

> on_campaign_submission_pending_review(webhook_payload_campaign_submission)

Campaign submission pending review event

Fired when a submission becomes ready for review: a CPM submission reached minViewsToEarn or a pool submission minViewsToQualify; per-post submissions on the first accrual pass after submission.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_submission =  # WebhookPayloadCampaignSubmission | 

begin
  # Campaign submission pending review event
  api_instance.on_campaign_submission_pending_review(webhook_payload_campaign_submission)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_pending_review: #{e}"
end
```

#### Using the on_campaign_submission_pending_review_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_submission_pending_review_with_http_info(webhook_payload_campaign_submission)

```ruby
begin
  # Campaign submission pending review event
  data, status_code, headers = api_instance.on_campaign_submission_pending_review_with_http_info(webhook_payload_campaign_submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_pending_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_submission** | [**WebhookPayloadCampaignSubmission**](WebhookPayloadCampaignSubmission.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_submission_received

> on_campaign_submission_received(webhook_payload_campaign_submission)

Campaign submission received event

Fired when a creator submits a post to a campaign and its tracking window opens.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_submission =  # WebhookPayloadCampaignSubmission | 

begin
  # Campaign submission received event
  api_instance.on_campaign_submission_received(webhook_payload_campaign_submission)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_received: #{e}"
end
```

#### Using the on_campaign_submission_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_submission_received_with_http_info(webhook_payload_campaign_submission)

```ruby
begin
  # Campaign submission received event
  data, status_code, headers = api_instance.on_campaign_submission_received_with_http_info(webhook_payload_campaign_submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_submission** | [**WebhookPayloadCampaignSubmission**](WebhookPayloadCampaignSubmission.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_campaign_submission_rejected

> on_campaign_submission_rejected(webhook_payload_campaign_submission)

Campaign submission rejected event

Fired when an operator rejects a submission.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_campaign_submission =  # WebhookPayloadCampaignSubmission | 

begin
  # Campaign submission rejected event
  api_instance.on_campaign_submission_rejected(webhook_payload_campaign_submission)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_rejected: #{e}"
end
```

#### Using the on_campaign_submission_rejected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_campaign_submission_rejected_with_http_info(webhook_payload_campaign_submission)

```ruby
begin
  # Campaign submission rejected event
  data, status_code, headers = api_instance.on_campaign_submission_rejected_with_http_info(webhook_payload_campaign_submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_campaign_submission_rejected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_campaign_submission** | [**WebhookPayloadCampaignSubmission**](WebhookPayloadCampaignSubmission.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_comment_received

> on_comment_received(webhook_payload_comment)

Comment received event

Fired when a new comment is received on a tracked post.  - Delivered for Instagram, Facebook, Threads, YouTube, LinkedIn, Bluesky, Reddit and TikTok. - X/Twitter does NOT fire this event. - Instagram, Facebook and TikTok arrive in real time from the platform's own webhook. The rest are poll-driven, so delivery is not instant. - TikTok needs an account connected through the TikTok for Business app. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_comment =  # WebhookPayloadComment | 

begin
  # Comment received event
  api_instance.on_comment_received(webhook_payload_comment)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_comment_received: #{e}"
end
```

#### Using the on_comment_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_comment_received_with_http_info(webhook_payload_comment)

```ruby
begin
  # Comment received event
  data, status_code, headers = api_instance.on_comment_received_with_http_info(webhook_payload_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_comment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_comment** | [**WebhookPayloadComment**](WebhookPayloadComment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_order_created

> on_commerce_order_created(webhook_payload_commerce_order)

Commerce order created event

Fired when an order is placed on a connected store. The payload carries identifiers only; read the order with `GET /v1/commerce/orders/{orderId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_order =  # WebhookPayloadCommerceOrder | 

begin
  # Commerce order created event
  api_instance.on_commerce_order_created(webhook_payload_commerce_order)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_created: #{e}"
end
```

#### Using the on_commerce_order_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_order_created_with_http_info(webhook_payload_commerce_order)

```ruby
begin
  # Commerce order created event
  data, status_code, headers = api_instance.on_commerce_order_created_with_http_info(webhook_payload_commerce_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_order** | [**WebhookPayloadCommerceOrder**](WebhookPayloadCommerceOrder.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_order_refunded

> on_commerce_order_refunded(webhook_payload_commerce_order)

Commerce order refunded event

Fired when a refund is issued on an order of a connected store. A commerce.order.updated usually follows for the same change. The payload carries identifiers only; read the order with `GET /v1/commerce/orders/{orderId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_order =  # WebhookPayloadCommerceOrder | 

begin
  # Commerce order refunded event
  api_instance.on_commerce_order_refunded(webhook_payload_commerce_order)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_refunded: #{e}"
end
```

#### Using the on_commerce_order_refunded_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_order_refunded_with_http_info(webhook_payload_commerce_order)

```ruby
begin
  # Commerce order refunded event
  data, status_code, headers = api_instance.on_commerce_order_refunded_with_http_info(webhook_payload_commerce_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_refunded_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_order** | [**WebhookPayloadCommerceOrder**](WebhookPayloadCommerceOrder.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_order_updated

> on_commerce_order_updated(webhook_payload_commerce_order)

Commerce order updated event

Fired when an order on a connected store changes: payment, fulfilment, cancellation, edits, and refunds too. The payload carries identifiers only; read the order with `GET /v1/commerce/orders/{orderId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_order =  # WebhookPayloadCommerceOrder | 

begin
  # Commerce order updated event
  api_instance.on_commerce_order_updated(webhook_payload_commerce_order)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_updated: #{e}"
end
```

#### Using the on_commerce_order_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_order_updated_with_http_info(webhook_payload_commerce_order)

```ruby
begin
  # Commerce order updated event
  data, status_code, headers = api_instance.on_commerce_order_updated_with_http_info(webhook_payload_commerce_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_order_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_order** | [**WebhookPayloadCommerceOrder**](WebhookPayloadCommerceOrder.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_product_created

> on_commerce_product_created(webhook_payload_commerce_product)

Commerce product created event

Fired when a product is created on a connected store. The payload carries identifiers only; read the product with `GET /v1/commerce/products/{productId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_product =  # WebhookPayloadCommerceProduct | 

begin
  # Commerce product created event
  api_instance.on_commerce_product_created(webhook_payload_commerce_product)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_created: #{e}"
end
```

#### Using the on_commerce_product_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_product_created_with_http_info(webhook_payload_commerce_product)

```ruby
begin
  # Commerce product created event
  data, status_code, headers = api_instance.on_commerce_product_created_with_http_info(webhook_payload_commerce_product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_product** | [**WebhookPayloadCommerceProduct**](WebhookPayloadCommerceProduct.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_product_deleted

> on_commerce_product_deleted(webhook_payload_commerce_product)

Commerce product deleted event

Fired when a product is deleted from a connected store. `status` and `platformStatus` are null. The payload carries identifiers only; read the product with `GET /v1/commerce/products/{productId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_product =  # WebhookPayloadCommerceProduct | 

begin
  # Commerce product deleted event
  api_instance.on_commerce_product_deleted(webhook_payload_commerce_product)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_deleted: #{e}"
end
```

#### Using the on_commerce_product_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_product_deleted_with_http_info(webhook_payload_commerce_product)

```ruby
begin
  # Commerce product deleted event
  data, status_code, headers = api_instance.on_commerce_product_deleted_with_http_info(webhook_payload_commerce_product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_product** | [**WebhookPayloadCommerceProduct**](WebhookPayloadCommerceProduct.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_commerce_product_updated

> on_commerce_product_updated(webhook_payload_commerce_product)

Commerce product updated event

Fired when a product on a connected store changes: its fields, status, variants or prices. The payload carries identifiers only; read the product with `GET /v1/commerce/products/{productId}?accountId=...`. Fired once per Zernio account connected to the store. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_commerce_product =  # WebhookPayloadCommerceProduct | 

begin
  # Commerce product updated event
  api_instance.on_commerce_product_updated(webhook_payload_commerce_product)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_updated: #{e}"
end
```

#### Using the on_commerce_product_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_commerce_product_updated_with_http_info(webhook_payload_commerce_product)

```ruby
begin
  # Commerce product updated event
  data, status_code, headers = api_instance.on_commerce_product_updated_with_http_info(webhook_payload_commerce_product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_commerce_product_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_commerce_product** | [**WebhookPayloadCommerceProduct**](WebhookPayloadCommerceProduct.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_contact_deleted

> on_contact_deleted(webhook_payload_contact)

Contact deleted

The provider contact was deleted; its email channel is removed, the contact row stays when other channels remain.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_contact =  # WebhookPayloadContact | 

begin
  # Contact deleted
  api_instance.on_contact_deleted(webhook_payload_contact)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_deleted: #{e}"
end
```

#### Using the on_contact_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_contact_deleted_with_http_info(webhook_payload_contact)

```ruby
begin
  # Contact deleted
  data, status_code, headers = api_instance.on_contact_deleted_with_http_info(webhook_payload_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_contact** | [**WebhookPayloadContact**](WebhookPayloadContact.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_contact_field_changed

> on_contact_field_changed(webhook_payload_contact_field_changed)

Contact field changed event

Fired once per custom field whose value a write changed, with the previous and new value.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_contact_field_changed =  # WebhookPayloadContactFieldChanged | 

begin
  # Contact field changed event
  api_instance.on_contact_field_changed(webhook_payload_contact_field_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_field_changed: #{e}"
end
```

#### Using the on_contact_field_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_contact_field_changed_with_http_info(webhook_payload_contact_field_changed)

```ruby
begin
  # Contact field changed event
  data, status_code, headers = api_instance.on_contact_field_changed_with_http_info(webhook_payload_contact_field_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_contact_field_changed** | [**WebhookPayloadContactFieldChanged**](WebhookPayloadContactFieldChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_contact_tag_added

> on_contact_tag_added(webhook_payload_contact_tag)

Contact tag added event

Fired once per tag a write actually added to a contact, whether the API, a workflow add_tag node or a comment-automation click made it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_contact_tag =  # WebhookPayloadContactTag | 

begin
  # Contact tag added event
  api_instance.on_contact_tag_added(webhook_payload_contact_tag)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_tag_added: #{e}"
end
```

#### Using the on_contact_tag_added_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_contact_tag_added_with_http_info(webhook_payload_contact_tag)

```ruby
begin
  # Contact tag added event
  data, status_code, headers = api_instance.on_contact_tag_added_with_http_info(webhook_payload_contact_tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_tag_added_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_contact_tag** | [**WebhookPayloadContactTag**](WebhookPayloadContactTag.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_contact_tag_removed

> on_contact_tag_removed(webhook_payload_contact_tag)

Contact tag removed event

Fired once per tag a write actually removed from a contact.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_contact_tag =  # WebhookPayloadContactTag | 

begin
  # Contact tag removed event
  api_instance.on_contact_tag_removed(webhook_payload_contact_tag)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_tag_removed: #{e}"
end
```

#### Using the on_contact_tag_removed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_contact_tag_removed_with_http_info(webhook_payload_contact_tag)

```ruby
begin
  # Contact tag removed event
  data, status_code, headers = api_instance.on_contact_tag_removed_with_http_info(webhook_payload_contact_tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_tag_removed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_contact_tag** | [**WebhookPayloadContactTag**](WebhookPayloadContactTag.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_contact_updated

> on_contact_updated(webhook_payload_contact)

Contact updated

A provider contacts sync created or changed a contact.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_contact =  # WebhookPayloadContact | 

begin
  # Contact updated
  api_instance.on_contact_updated(webhook_payload_contact)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_updated: #{e}"
end
```

#### Using the on_contact_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_contact_updated_with_http_info(webhook_payload_contact)

```ruby
begin
  # Contact updated
  data, status_code, headers = api_instance.on_contact_updated_with_http_info(webhook_payload_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_contact_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_contact** | [**WebhookPayloadContact**](WebhookPayloadContact.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_conversation_control_changed

> on_conversation_control_changed(webhook_payload_conversation_control_changed)

Conversation control changed event

Fired on Meta's handover protocol (`messaging_handovers`), when control of a conversation thread changes.  WhatsApp: control moves between Meta Business Agent and your app, or the agent is first seen answering a thread. While `control.owner` is `ai_agent`:  - Inbound messages arrive on `message.received` with `metadata.standby: true`. - The agent's replies arrive on `message.sent` with `source: meta_business_agent`. - Sending any message takes control back.  Facebook and Instagram: another app passed you the thread (`owner: app`), or took or received it (`owner: other`, with `ownerAppId`). While you are not the owner:  - Inbound messages arrive with `metadata.standby: true`. - No automation runs. - Sends fail with `not_thread_owner`.  Change control with `POST /v1/inbox/conversations/{conversationId}/thread-control`. `take` and `request` answer 400 `platform_not_supported` on Instagram Login connections. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_conversation_control_changed =  # WebhookPayloadConversationControlChanged | 

begin
  # Conversation control changed event
  api_instance.on_conversation_control_changed(webhook_payload_conversation_control_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_conversation_control_changed: #{e}"
end
```

#### Using the on_conversation_control_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_conversation_control_changed_with_http_info(webhook_payload_conversation_control_changed)

```ruby
begin
  # Conversation control changed event
  data, status_code, headers = api_instance.on_conversation_control_changed_with_http_info(webhook_payload_conversation_control_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_conversation_control_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_conversation_control_changed** | [**WebhookPayloadConversationControlChanged**](WebhookPayloadConversationControlChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_conversation_started

> on_conversation_started(webhook_payload_conversation_started)

Conversation started event

Fired once when a new conversation begins between one of your connected accounts and a contact, in either direction. Works across every DM platform (Instagram, Messenger/Facebook, Telegram, WhatsApp, X, Reddit, Bluesky, TikTok). Naturally deduped: a given conversation only fires this event the very first time it appears. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_conversation_started =  # WebhookPayloadConversationStarted | 

begin
  # Conversation started event
  api_instance.on_conversation_started(webhook_payload_conversation_started)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_conversation_started: #{e}"
end
```

#### Using the on_conversation_started_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_conversation_started_with_http_info(webhook_payload_conversation_started)

```ruby
begin
  # Conversation started event
  data, status_code, headers = api_instance.on_conversation_started_with_http_info(webhook_payload_conversation_started)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_conversation_started_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_conversation_started** | [**WebhookPayloadConversationStarted**](WebhookPayloadConversationStarted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_creator_campaign_budget_exhausted

> on_creator_campaign_budget_exhausted(webhook_payload_creator_campaign)

Creator campaign budget exhausted event

Fired once when a campaign's earnings reach its budget.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_creator_campaign =  # WebhookPayloadCreatorCampaign | 

begin
  # Creator campaign budget exhausted event
  api_instance.on_creator_campaign_budget_exhausted(webhook_payload_creator_campaign)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_creator_campaign_budget_exhausted: #{e}"
end
```

#### Using the on_creator_campaign_budget_exhausted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_creator_campaign_budget_exhausted_with_http_info(webhook_payload_creator_campaign)

```ruby
begin
  # Creator campaign budget exhausted event
  data, status_code, headers = api_instance.on_creator_campaign_budget_exhausted_with_http_info(webhook_payload_creator_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_creator_campaign_budget_exhausted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_creator_campaign** | [**WebhookPayloadCreatorCampaign**](WebhookPayloadCreatorCampaign.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_creator_campaign_closed

> on_creator_campaign_closed(webhook_payload_creator_campaign)

Creator campaign closed event

Fired once when a campaign closes; a pool campaign is split among participants at this moment.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_creator_campaign =  # WebhookPayloadCreatorCampaign | 

begin
  # Creator campaign closed event
  api_instance.on_creator_campaign_closed(webhook_payload_creator_campaign)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_creator_campaign_closed: #{e}"
end
```

#### Using the on_creator_campaign_closed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_creator_campaign_closed_with_http_info(webhook_payload_creator_campaign)

```ruby
begin
  # Creator campaign closed event
  data, status_code, headers = api_instance.on_creator_campaign_closed_with_http_info(webhook_payload_creator_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_creator_campaign_closed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_creator_campaign** | [**WebhookPayloadCreatorCampaign**](WebhookPayloadCreatorCampaign.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_file_created

> on_file_created(webhook_payload_file)

File created

A file or folder appeared in a connected Drive or OneDrive (push, seconds after the change).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_file =  # WebhookPayloadFile | 

begin
  # File created
  api_instance.on_file_created(webhook_payload_file)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_created: #{e}"
end
```

#### Using the on_file_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_file_created_with_http_info(webhook_payload_file)

```ruby
begin
  # File created
  data, status_code, headers = api_instance.on_file_created_with_http_info(webhook_payload_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_file** | [**WebhookPayloadFile**](WebhookPayloadFile.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_file_deleted

> on_file_deleted(webhook_payload_file)

File deleted

The item was trashed or removed on the provider.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_file =  # WebhookPayloadFile | 

begin
  # File deleted
  api_instance.on_file_deleted(webhook_payload_file)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_deleted: #{e}"
end
```

#### Using the on_file_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_file_deleted_with_http_info(webhook_payload_file)

```ruby
begin
  # File deleted
  data, status_code, headers = api_instance.on_file_deleted_with_http_info(webhook_payload_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_file** | [**WebhookPayloadFile**](WebhookPayloadFile.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_file_picked

> on_file_picked(webhook_payload_file_picked)

Files picked

The user finished a hosted picker session (`POST /v1/files/picker-sessions`) and picked at least one file. The app can now open those files. Not sent on cancel.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_file_picked =  # WebhookPayloadFilePicked | 

begin
  # Files picked
  api_instance.on_file_picked(webhook_payload_file_picked)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_picked: #{e}"
end
```

#### Using the on_file_picked_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_file_picked_with_http_info(webhook_payload_file_picked)

```ruby
begin
  # Files picked
  data, status_code, headers = api_instance.on_file_picked_with_http_info(webhook_payload_file_picked)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_picked_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_file_picked** | [**WebhookPayloadFilePicked**](WebhookPayloadFilePicked.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_file_updated

> on_file_updated(webhook_payload_file)

File updated

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_file =  # WebhookPayloadFile | 

begin
  # File updated
  api_instance.on_file_updated(webhook_payload_file)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_updated: #{e}"
end
```

#### Using the on_file_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_file_updated_with_http_info(webhook_payload_file)

```ruby
begin
  # File updated
  data, status_code, headers = api_instance.on_file_updated_with_http_info(webhook_payload_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_file_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_file** | [**WebhookPayloadFile**](WebhookPayloadFile.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_lead_received

> on_lead_received(webhook_payload_lead)

Lead received event

Fired when a new lead is submitted against a Meta Lead Gen (Instant) Form and ingested via the Page `leadgen` webhook. `lead.fields` is the question-key to answer map; `lead.formId` / `lead.adId` give provenance. Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_lead =  # WebhookPayloadLead | 

begin
  # Lead received event
  api_instance.on_lead_received(webhook_payload_lead)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_lead_received: #{e}"
end
```

#### Using the on_lead_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_lead_received_with_http_info(webhook_payload_lead)

```ruby
begin
  # Lead received event
  data, status_code, headers = api_instance.on_lead_received_with_http_info(webhook_payload_lead)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_lead_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_lead** | [**WebhookPayloadLead**](WebhookPayloadLead.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_deleted

> on_message_deleted(webhook_payload_message_deleted)

Message deleted event

Fired when a sender deletes (unsends) a message.  - Instagram: incoming unsend. - WhatsApp, outgoing: a message the business deleted (via the Cloud API, or from the WhatsApp Business app on a Coexistence number). - WhatsApp, incoming: a message the customer deleted.  Read `message.direction` to tell the two directions apart.  The payload retains the pre-delete text and attachments so API consumers can access the original content for moderation or compliance. The Zernio dashboard UI hides it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_deleted =  # WebhookPayloadMessageDeleted | 

begin
  # Message deleted event
  api_instance.on_message_deleted(webhook_payload_message_deleted)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_deleted: #{e}"
end
```

#### Using the on_message_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_deleted_with_http_info(webhook_payload_message_deleted)

```ruby
begin
  # Message deleted event
  data, status_code, headers = api_instance.on_message_deleted_with_http_info(webhook_payload_message_deleted)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_deleted** | [**WebhookPayloadMessageDeleted**](WebhookPayloadMessageDeleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_delivered

> on_message_delivered(webhook_payload_message_delivery_status)

Message delivered event

Fired when an outgoing message is delivered to the recipient. Supported on WhatsApp and Facebook Messenger. On WhatsApp, `pricing` and `billingConversation` carry Meta's billing context for the message (also on `message.sent`, `message.read` and `message.failed`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message delivered event
  api_instance.on_message_delivered(webhook_payload_message_delivery_status)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_delivered: #{e}"
end
```

#### Using the on_message_delivered_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_delivered_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message delivered event
  data, status_code, headers = api_instance.on_message_delivered_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_delivered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_edited

> on_message_edited(webhook_payload_message_edited)

Message edited event

Fired when a sender edits a previously-sent message. Supported on Instagram, Facebook Messenger, Telegram, and WhatsApp. The payload includes the full editHistory so consumers can show prior versions. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_edited =  # WebhookPayloadMessageEdited | 

begin
  # Message edited event
  api_instance.on_message_edited(webhook_payload_message_edited)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_edited: #{e}"
end
```

#### Using the on_message_edited_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_edited_with_http_info(webhook_payload_message_edited)

```ruby
begin
  # Message edited event
  data, status_code, headers = api_instance.on_message_edited_with_http_info(webhook_payload_message_edited)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_edited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_edited** | [**WebhookPayloadMessageEdited**](WebhookPayloadMessageEdited.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_failed

> on_message_failed(webhook_payload_message_delivery_status)

Message delivery failed event

Fired when an outgoing message fails to deliver. Currently only emitted for WhatsApp (other platforms don't expose per-message failure via webhook). The payload error object contains code, title, and message from the platform. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message delivery failed event
  api_instance.on_message_failed(webhook_payload_message_delivery_status)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_failed: #{e}"
end
```

#### Using the on_message_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_failed_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message delivery failed event
  data, status_code, headers = api_instance.on_message_failed_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_played

> on_message_played(webhook_payload_message_delivery_status)

Message played event

Fires the first time the recipient plays a voice message you sent on WhatsApp.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message played event
  api_instance.on_message_played(webhook_payload_message_delivery_status)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_played: #{e}"
end
```

#### Using the on_message_played_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_played_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message played event
  data, status_code, headers = api_instance.on_message_played_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_played_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_read

> on_message_read(webhook_payload_message_delivery_status)

Message read event

Fired when an outgoing message is read by the recipient. Supported on WhatsApp, Facebook Messenger, Instagram, and RCS. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message read event
  api_instance.on_message_read(webhook_payload_message_delivery_status)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_read: #{e}"
end
```

#### Using the on_message_read_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_read_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message read event
  data, status_code, headers = api_instance.on_message_read_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_received

> on_message_received(webhook_payload_message)

Message received event

Fired when a new inbox message is received.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message =  # WebhookPayloadMessage | 

begin
  # Message received event
  api_instance.on_message_received(webhook_payload_message)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_received: #{e}"
end
```

#### Using the on_message_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_received_with_http_info(webhook_payload_message)

```ruby
begin
  # Message received event
  data, status_code, headers = api_instance.on_message_received_with_http_info(webhook_payload_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message** | [**WebhookPayloadMessage**](WebhookPayloadMessage.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_sent

> on_message_sent(webhook_payload_message_sent)

Message sent event

Fired when a message is sent via the API, or from the WhatsApp Business app on Coexistence numbers.  Sends that carry platform-specific context deliver it under `metadata`. A quote-reply sent through the API arrives with `metadata.quotedMessageId`, so mirroring CRMs can thread it without a lookup.  Which surfaces carry that reference is documented on `WebhookPayloadMessageSent.metadata.quotedMessageId`. A quote-reply sent from the WhatsApp Business or Instagram app is not one of them. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_message_sent =  # WebhookPayloadMessageSent | 

begin
  # Message sent event
  api_instance.on_message_sent(webhook_payload_message_sent)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_sent: #{e}"
end
```

#### Using the on_message_sent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_sent_with_http_info(webhook_payload_message_sent)

```ruby
begin
  # Message sent event
  data, status_code, headers = api_instance.on_message_sent_with_http_info(webhook_payload_message_sent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_sent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_sent** | [**WebhookPayloadMessageSent**](WebhookPayloadMessageSent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_phone_number_stock_available

> on_phone_number_stock_available(webhook_payload_phone_number_stock_available)

Phone-number stock available event

Fired by the stock sweep (every 6h) the first time a country you watch via POST /v1/phone-numbers/stock-watches has deliverable numbers again. The watch is consumed, so the event fires once per watch; the stock counts are a snapshot and numbers are sold first come, first served. Buy with POST /v1/phone-numbers/purchase. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_phone_number_stock_available =  # WebhookPayloadPhoneNumberStockAvailable | 

begin
  # Phone-number stock available event
  api_instance.on_phone_number_stock_available(webhook_payload_phone_number_stock_available)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_phone_number_stock_available: #{e}"
end
```

#### Using the on_phone_number_stock_available_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_phone_number_stock_available_with_http_info(webhook_payload_phone_number_stock_available)

```ruby
begin
  # Phone-number stock available event
  data, status_code, headers = api_instance.on_phone_number_stock_available_with_http_info(webhook_payload_phone_number_stock_available)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_phone_number_stock_available_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_phone_number_stock_available** | [**WebhookPayloadPhoneNumberStockAvailable**](WebhookPayloadPhoneNumberStockAvailable.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_authenticity_changed

> on_post_authenticity_changed(webhook_payload_post_authenticity_changed)

Post authenticity changed event

Fired when a tracked post's authenticity score crosses 40 in either direction. Carries the new and previous score, confidence and reasons. A first score never fires it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_authenticity_changed =  # WebhookPayloadPostAuthenticityChanged | 

begin
  # Post authenticity changed event
  api_instance.on_post_authenticity_changed(webhook_payload_post_authenticity_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_authenticity_changed: #{e}"
end
```

#### Using the on_post_authenticity_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_authenticity_changed_with_http_info(webhook_payload_post_authenticity_changed)

```ruby
begin
  # Post authenticity changed event
  data, status_code, headers = api_instance.on_post_authenticity_changed_with_http_info(webhook_payload_post_authenticity_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_authenticity_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_authenticity_changed** | [**WebhookPayloadPostAuthenticityChanged**](WebhookPayloadPostAuthenticityChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_cancelled

> on_post_cancelled(webhook_payload_post)

Post cancelled event

Fired when a scheduled post is cancelled because its account was disconnected and nothing published. Not sent when a post is deleted.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post cancelled event
  api_instance.on_post_cancelled(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_cancelled: #{e}"
end
```

#### Using the on_post_cancelled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_cancelled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post cancelled event
  data, status_code, headers = api_instance.on_post_cancelled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_cancelled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_external_created

> on_post_external_created(webhook_payload_external_post)

External post created event

Fired when Zernio's background sync detects a natively-authored post (created outside Zernio, e.g. a Google Business Profile localPost made in the Google UI) for the first time. Poll-driven (~hourly), not real-time. `post.source` is always \"external\". 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_external_post =  # WebhookPayloadExternalPost | 

begin
  # External post created event
  api_instance.on_post_external_created(webhook_payload_external_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_created: #{e}"
end
```

#### Using the on_post_external_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_external_created_with_http_info(webhook_payload_external_post)

```ruby
begin
  # External post created event
  data, status_code, headers = api_instance.on_post_external_created_with_http_info(webhook_payload_external_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_external_post** | [**WebhookPayloadExternalPost**](WebhookPayloadExternalPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_external_deleted

> on_post_external_deleted(webhook_payload_external_post)

External post deleted event

Fired when a tracked native post is detected as removed from the platform.  - `post.deletedAt` carries the detection time. - Coverage is bounded to the most recent posts the platform listing returns. - Detection diffs against the posts a prior sync already indexed. An account with no indexed post can never emit this event, no matter how the subscription is configured. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_external_post =  # WebhookPayloadExternalPost | 

begin
  # External post deleted event
  api_instance.on_post_external_deleted(webhook_payload_external_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_deleted: #{e}"
end
```

#### Using the on_post_external_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_external_deleted_with_http_info(webhook_payload_external_post)

```ruby
begin
  # External post deleted event
  data, status_code, headers = api_instance.on_post_external_deleted_with_http_info(webhook_payload_external_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_external_post** | [**WebhookPayloadExternalPost**](WebhookPayloadExternalPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_external_updated

> on_post_external_updated(webhook_payload_external_post)

External post updated event

Fired when a tracked native post's text or media changed on the platform. Detected by comparing text/media structure and, where available, the platform's own edit timestamp; a media-URL-only refresh does not fire this. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_external_post =  # WebhookPayloadExternalPost | 

begin
  # External post updated event
  api_instance.on_post_external_updated(webhook_payload_external_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_updated: #{e}"
end
```

#### Using the on_post_external_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_external_updated_with_http_info(webhook_payload_external_post)

```ruby
begin
  # External post updated event
  data, status_code, headers = api_instance.on_post_external_updated_with_http_info(webhook_payload_external_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_external_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_external_post** | [**WebhookPayloadExternalPost**](WebhookPayloadExternalPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_failed

> on_post_failed(webhook_payload_post)

Post failed event

Fired when a post fails to publish on all target platforms.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post failed event
  api_instance.on_post_failed(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_failed: #{e}"
end
```

#### Using the on_post_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_failed_with_http_info(webhook_payload_post)

```ruby
begin
  # Post failed event
  data, status_code, headers = api_instance.on_post_failed_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_partial

> on_post_partial(webhook_payload_post)

Post partial event

Fired when a post publishes on some platforms and fails on others.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post partial event
  api_instance.on_post_partial(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_partial: #{e}"
end
```

#### Using the on_post_partial_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_partial_with_http_info(webhook_payload_post)

```ruby
begin
  # Post partial event
  data, status_code, headers = api_instance.on_post_partial_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_partial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_platform_deleted

> on_post_platform_deleted(webhook_payload_post_platform)

Post platform deleted event

Fired when Zernio's background sync detects that a platform target published through Zernio was later deleted on the platform (e.g. the user deleted the Instagram post natively).  - Detection is poll-driven (~hourly), not real-time, and fires once per platform target. - `platform.deletedAt` carries the detection time. - Detection is listing-based: a false positive self-heals in Zernio's data when the post reappears, but the event is not retracted. - Coverage is bounded to the posts the platform listing returns. - Detection diffs against the posts a prior sync already indexed. An account with no indexed post can never emit this event, no matter how the subscription is configured. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_platform =  # WebhookPayloadPostPlatform | 

begin
  # Post platform deleted event
  api_instance.on_post_platform_deleted(webhook_payload_post_platform)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_deleted: #{e}"
end
```

#### Using the on_post_platform_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_platform_deleted_with_http_info(webhook_payload_post_platform)

```ruby
begin
  # Post platform deleted event
  data, status_code, headers = api_instance.on_post_platform_deleted_with_http_info(webhook_payload_post_platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_platform** | [**WebhookPayloadPostPlatform**](WebhookPayloadPostPlatform.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_platform_failed

> on_post_platform_failed(webhook_payload_post_platform)

Post platform failed event

Fired once per platform target inside a post when that platform fails permanently.  - Temporary/retryable failures do NOT fire this event, so retry loops stay quiet. - The envelope event (`post.failed` / `post.partial`) fires separately, AFTER all platforms have terminated. - It can fire for a target that already emitted `post.platform.published`, if background reconciliation later finds the publish never actually completed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_platform =  # WebhookPayloadPostPlatform | 

begin
  # Post platform failed event
  api_instance.on_post_platform_failed(webhook_payload_post_platform)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_failed: #{e}"
end
```

#### Using the on_post_platform_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_platform_failed_with_http_info(webhook_payload_post_platform)

```ruby
begin
  # Post platform failed event
  data, status_code, headers = api_instance.on_post_platform_failed_with_http_info(webhook_payload_post_platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_platform** | [**WebhookPayloadPostPlatform**](WebhookPayloadPostPlatform.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_platform_published

> on_post_platform_published(webhook_payload_post_platform)

Post platform published event

Fired once per platform target inside a post, as soon as that platform finishes publishing successfully.  It does NOT wait for the post-level rollup, so incremental UIs get notified immediately, even while other platforms on the same post are still processing.  - The envelope event (`post.published` / `post.partial`) fires separately, AFTER all platforms have terminated. - If a target later fails background reconciliation (e.g. a Facebook video Meta accepted but never actually published), `post.platform.failed` fires for the same target afterward. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_platform =  # WebhookPayloadPostPlatform | 

begin
  # Post platform published event
  api_instance.on_post_platform_published(webhook_payload_post_platform)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_published: #{e}"
end
```

#### Using the on_post_platform_published_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_platform_published_with_http_info(webhook_payload_post_platform)

```ruby
begin
  # Post platform published event
  data, status_code, headers = api_instance.on_post_platform_published_with_http_info(webhook_payload_post_platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_platform_published_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_platform** | [**WebhookPayloadPostPlatform**](WebhookPayloadPostPlatform.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_published

> on_post_published(webhook_payload_post)

Post published event

Fired when a post is successfully published.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post published event
  api_instance.on_post_published(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_published: #{e}"
end
```

#### Using the on_post_published_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_published_with_http_info(webhook_payload_post)

```ruby
begin
  # Post published event
  data, status_code, headers = api_instance.on_post_published_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_published_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_recycled

> on_post_recycled(webhook_payload_post)

Post recycled event

Fired when a post is recycled (cloned and re-scheduled for publishing). The new clone also fires a post.scheduled event.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post recycled event
  api_instance.on_post_recycled(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_recycled: #{e}"
end
```

#### Using the on_post_recycled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_recycled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post recycled event
  data, status_code, headers = api_instance.on_post_recycled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_recycled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_scheduled

> on_post_scheduled(webhook_payload_post)

Post scheduled event

Fired whenever a post enters the scheduled state: created with a schedule, added to a queue, a draft promoted to scheduled or queued, a failed or partial post retried, or a recycled clone created. Not fired when an already-scheduled post is edited or rescheduled.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post scheduled event
  api_instance.on_post_scheduled(webhook_payload_post)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_scheduled: #{e}"
end
```

#### Using the on_post_scheduled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_scheduled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post scheduled event
  data, status_code, headers = api_instance.on_post_scheduled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_scheduled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_tik_tok_url_resolved

> on_post_tik_tok_url_resolved(webhook_payload_post_platform)

TikTok post URL resolved event

Fired when an already-published TikTok platform entry gets its public URL backfilled.  TikTok exposes the numeric video id asynchronously (often minutes after PUBLISH_COMPLETE), so the terminal events can carry an empty `publishedUrl` for TikTok. This event delivers `platform.publishedUrl` and the resolved `platform.platformPostId` once available.  - Fires at most once per platform target. - Never fires for drafts or private posts (no public URL exists). - The payload shape is identical to `post.platform.published`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_platform =  # WebhookPayloadPostPlatform | 

begin
  # TikTok post URL resolved event
  api_instance.on_post_tik_tok_url_resolved(webhook_payload_post_platform)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_tik_tok_url_resolved: #{e}"
end
```

#### Using the on_post_tik_tok_url_resolved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_tik_tok_url_resolved_with_http_info(webhook_payload_post_platform)

```ruby
begin
  # TikTok post URL resolved event
  data, status_code, headers = api_instance.on_post_tik_tok_url_resolved_with_http_info(webhook_payload_post_platform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_tik_tok_url_resolved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_platform** | [**WebhookPayloadPostPlatform**](WebhookPayloadPostPlatform.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_tracking_completed

> on_post_tracking_completed(webhook_payload_post_tracking_completed)

Post tracking completed event

Fired once when a post's tracking window ends and its final analytics read has run. `final` carries the closing metrics, or null when none could be read, and `window.completionReason` is `final_read`, `unreachable` or `post_deleted`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_post_tracking_completed =  # WebhookPayloadPostTrackingCompleted | 

begin
  # Post tracking completed event
  api_instance.on_post_tracking_completed(webhook_payload_post_tracking_completed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_tracking_completed: #{e}"
end
```

#### Using the on_post_tracking_completed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_tracking_completed_with_http_info(webhook_payload_post_tracking_completed)

```ruby
begin
  # Post tracking completed event
  data, status_code, headers = api_instance.on_post_tracking_completed_with_http_info(webhook_payload_post_tracking_completed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_tracking_completed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post_tracking_completed** | [**WebhookPayloadPostTrackingCompleted**](WebhookPayloadPostTrackingCompleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_rcs_agent_status_updated

> on_rcs_agent_status_updated(on_rcs_agent_status_updated_request)

RCS agent status updated event

Fired on every customer-visible status change of an RCS agent:  - `changes_requested`: we need changes before filing. `reason` is our note. - `brand_vetting`. - `agent_review`. - `testing`: add test phones, then send the launch filing. With a `reason`, the launch filing bounced. - `launch_review`. - `launching`. - `live`: the agent can message any RCS-capable phone. - `rejected`: `reason` says why. - `deactivated`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_rcs_agent_status_updated_request =  # OnRcsAgentStatusUpdatedRequest | 

begin
  # RCS agent status updated event
  api_instance.on_rcs_agent_status_updated(on_rcs_agent_status_updated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_rcs_agent_status_updated: #{e}"
end
```

#### Using the on_rcs_agent_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_rcs_agent_status_updated_with_http_info(on_rcs_agent_status_updated_request)

```ruby
begin
  # RCS agent status updated event
  data, status_code, headers = api_instance.on_rcs_agent_status_updated_with_http_info(on_rcs_agent_status_updated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_rcs_agent_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_rcs_agent_status_updated_request** | [**OnRcsAgentStatusUpdatedRequest**](OnRcsAgentStatusUpdatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_reaction_received

> on_reaction_received(webhook_payload_reaction)

Reaction received event

Fired when a participant adds or removes an emoji reaction on a message. Requires the Inbox add-on.  Supported on WhatsApp, Telegram, Slack, Instagram, Facebook Messenger and TikTok. It is distinct from message.received, so a reaction (e.g. a thumbs-up) is not mistaken for an inbound message.  - `reaction.action` is `added` or `removed`. - On WhatsApp and Meta removals, the platform does not report which emoji was removed, so `reaction.emoji` may be an empty string. - On TikTok, a like or emoji reaction on a DM arrives only as this event (never as an empty message.received), with `reaction.platformMessageId` set to the TikTok id of the liked message. - Instagram and Facebook accounts connected before reactions shipped only emit this event after their webhook subscription is refreshed. Reconnect the account if reactions never arrive. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_reaction =  # WebhookPayloadReaction | 

begin
  # Reaction received event
  api_instance.on_reaction_received(webhook_payload_reaction)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_reaction_received: #{e}"
end
```

#### Using the on_reaction_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_reaction_received_with_http_info(webhook_payload_reaction)

```ruby
begin
  # Reaction received event
  data, status_code, headers = api_instance.on_reaction_received_with_http_info(webhook_payload_reaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_reaction_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_reaction** | [**WebhookPayloadReaction**](WebhookPayloadReaction.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_referral_received

> on_referral_received(webhook_payload_referral)

Referral received event

Fired when someone opens an EXISTING Instagram or Messenger thread through an attributable entry point, which Meta delivers as a standalone referral with no message attached. Requires the Inbox add-on.  Entry points:  - An ig.me / m.me link with a `ref` parameter. - (Messenger) A returning Click-to-Message ad click.  A referral that rides an inbound message (first message of a thread, icebreaker taps, returning ad clicks on Instagram) arrives on `message.received` under `metadata.referral` instead. The two never fire for the same click.  The first referral captured on a conversation is also persisted on it (see `metadata` on `GET /v1/inbox/conversations`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_referral =  # WebhookPayloadReferral | 

begin
  # Referral received event
  api_instance.on_referral_received(webhook_payload_referral)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_referral_received: #{e}"
end
```

#### Using the on_referral_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_referral_received_with_http_info(webhook_payload_referral)

```ruby
begin
  # Referral received event
  data, status_code, headers = api_instance.on_referral_received_with_http_info(webhook_payload_referral)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_referral_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_referral** | [**WebhookPayloadReferral**](WebhookPayloadReferral.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_review_deleted

> on_review_deleted(webhook_payload_review_deleted)

Review deleted event

Google Business Profile stopped returning this review, for example after Google's spam filter removed it. Detected by polling: fires usually 6 to 12 hours after the review disappears, only for locations covered by a webhook subscribed to review.deleted or review.restored. If the review comes back, review.restored fires. May arrive for a review id you never received review.new for. A review hidden and restored by Google may produce review.deleted followed by review.restored, and a review.updated can arrive for a review previously reported by review.deleted (it is restored on the next check). Requires the Inbox add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_review_deleted =  # WebhookPayloadReviewDeleted | 

begin
  # Review deleted event
  api_instance.on_review_deleted(webhook_payload_review_deleted)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_deleted: #{e}"
end
```

#### Using the on_review_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_review_deleted_with_http_info(webhook_payload_review_deleted)

```ruby
begin
  # Review deleted event
  data, status_code, headers = api_instance.on_review_deleted_with_http_info(webhook_payload_review_deleted)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_review_deleted** | [**WebhookPayloadReviewDeleted**](WebhookPayloadReviewDeleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_review_new

> on_review_new(webhook_payload_review_new)

Review new event

Fired when a new review is posted on a connected account. Currently supported for Google Business Profile (real-time via Pub/Sub). Requires the Inbox add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_review_new =  # WebhookPayloadReviewNew | 

begin
  # Review new event
  api_instance.on_review_new(webhook_payload_review_new)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_new: #{e}"
end
```

#### Using the on_review_new_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_review_new_with_http_info(webhook_payload_review_new)

```ruby
begin
  # Review new event
  data, status_code, headers = api_instance.on_review_new_with_http_info(webhook_payload_review_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_new_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_review_new** | [**WebhookPayloadReviewNew**](WebhookPayloadReviewNew.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_review_restored

> on_review_restored(webhook_payload_review_restored)

Review restored event

A review reported by review.deleted is returned by Google again. Same payload as review.new. Requires the Inbox add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_review_restored =  # WebhookPayloadReviewRestored | 

begin
  # Review restored event
  api_instance.on_review_restored(webhook_payload_review_restored)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_restored: #{e}"
end
```

#### Using the on_review_restored_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_review_restored_with_http_info(webhook_payload_review_restored)

```ruby
begin
  # Review restored event
  data, status_code, headers = api_instance.on_review_restored_with_http_info(webhook_payload_review_restored)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_restored_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_review_restored** | [**WebhookPayloadReviewRestored**](WebhookPayloadReviewRestored.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_review_updated

> on_review_updated(webhook_payload_review_updated)

Review updated event

Fired when a Google Business Profile reviewer edits their review text or rating, or when a reply is posted through POST /v1/inbox/reviews/{reviewId}/reply. A reply written directly in Google's own interface does NOT fire this event, because Google emits no notification for it. Payload shape matches review.new. Requires the Inbox add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_review_updated =  # WebhookPayloadReviewUpdated | 

begin
  # Review updated event
  api_instance.on_review_updated(webhook_payload_review_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_updated: #{e}"
end
```

#### Using the on_review_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_review_updated_with_http_info(webhook_payload_review_updated)

```ruby
begin
  # Review updated event
  data, status_code, headers = api_instance.on_review_updated_with_http_info(webhook_payload_review_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_review_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_review_updated** | [**WebhookPayloadReviewUpdated**](WebhookPayloadReviewUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_sequence_enrolled

> on_sequence_enrolled(webhook_payload_sequence_enrollment)

Sequence enrolled event

Fired when a contact is enrolled in a sequence.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_sequence_enrollment =  # WebhookPayloadSequenceEnrollment | 

begin
  # Sequence enrolled event
  api_instance.on_sequence_enrolled(webhook_payload_sequence_enrollment)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sequence_enrolled: #{e}"
end
```

#### Using the on_sequence_enrolled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_sequence_enrolled_with_http_info(webhook_payload_sequence_enrollment)

```ruby
begin
  # Sequence enrolled event
  data, status_code, headers = api_instance.on_sequence_enrolled_with_http_info(webhook_payload_sequence_enrollment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sequence_enrolled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_sequence_enrollment** | [**WebhookPayloadSequenceEnrollment**](WebhookPayloadSequenceEnrollment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_sequence_exited

> on_sequence_exited(webhook_payload_sequence_enrollment)

Sequence exited event

Fired when a contact leaves a sequence, finished or not; exitReason says why.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_sequence_enrollment =  # WebhookPayloadSequenceEnrollment | 

begin
  # Sequence exited event
  api_instance.on_sequence_exited(webhook_payload_sequence_enrollment)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sequence_exited: #{e}"
end
```

#### Using the on_sequence_exited_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_sequence_exited_with_http_info(webhook_payload_sequence_enrollment)

```ruby
begin
  # Sequence exited event
  data, status_code, headers = api_instance.on_sequence_exited_with_http_info(webhook_payload_sequence_enrollment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sequence_exited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_sequence_enrollment** | [**WebhookPayloadSequenceEnrollment**](WebhookPayloadSequenceEnrollment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_sms_registration_action_required

> on_sms_registration_action_required(on_sms_registration_action_required_request)

SMS registration action required event

Fired when an SMS registration starts waiting on its owner. `reason` says why:  - `changes_requested`: we need answers to some points, before submission or to fix a carrier rejection. `message` is the request; answer with POST /v1/sms/registrations/{id}/respond. - `otp_required`: a sole-proprietor brand needs the code texted to its mobile. Submit it with POST /v1/sms/registrations/{id}/verify-otp. - `carrier_info_required`: the toll-free carrier asked for more information. The request expires after 7 days.  A carrier rejection alone does not fire it: we handle the fix, see `sms.registration.status_updated`.  It fires once per new request (not on follow-up messages) and once per OTP or carrier request. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_sms_registration_action_required_request =  # OnSmsRegistrationActionRequiredRequest | 

begin
  # SMS registration action required event
  api_instance.on_sms_registration_action_required(on_sms_registration_action_required_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sms_registration_action_required: #{e}"
end
```

#### Using the on_sms_registration_action_required_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_sms_registration_action_required_with_http_info(on_sms_registration_action_required_request)

```ruby
begin
  # SMS registration action required event
  data, status_code, headers = api_instance.on_sms_registration_action_required_with_http_info(on_sms_registration_action_required_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sms_registration_action_required_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_sms_registration_action_required_request** | [**OnSmsRegistrationActionRequiredRequest**](OnSmsRegistrationActionRequiredRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_sms_registration_status_updated

> on_sms_registration_status_updated(on_sms_registration_status_updated_request)

SMS registration status updated event

Fired on every status change of an SMS registration:  - `changes_requested`: we need answers, see `sms.registration.action_required`. - `requested`: a new submission or resubmit, or your answers are back in our review. - `pending`: with the carriers, including after we fixed and resent a rejection. - `approved`: live, attach numbers and send. - `rejected`: the carriers declined it. `reason` is their words and we handle the fix. - `deactivated`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_sms_registration_status_updated_request =  # OnSmsRegistrationStatusUpdatedRequest | 

begin
  # SMS registration status updated event
  api_instance.on_sms_registration_status_updated(on_sms_registration_status_updated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sms_registration_status_updated: #{e}"
end
```

#### Using the on_sms_registration_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_sms_registration_status_updated_with_http_info(on_sms_registration_status_updated_request)

```ruby
begin
  # SMS registration status updated event
  data, status_code, headers = api_instance.on_sms_registration_status_updated_with_http_info(on_sms_registration_status_updated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_sms_registration_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_sms_registration_status_updated_request** | [**OnSmsRegistrationStatusUpdatedRequest**](OnSmsRegistrationStatusUpdatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_support_run_completed

> on_support_run_completed(webhook_payload_support_run)

Support Assistant finished event

Fired when the Support Assistant finishes a question. run.status is completed, or needs_human when the assistant handed the question to a person. The run object matches GET /v1/support/runs/{runId}.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_support_run =  # WebhookPayloadSupportRun | 

begin
  # Support Assistant finished event
  api_instance.on_support_run_completed(webhook_payload_support_run)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_support_run_completed: #{e}"
end
```

#### Using the on_support_run_completed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_support_run_completed_with_http_info(webhook_payload_support_run)

```ruby
begin
  # Support Assistant finished event
  data, status_code, headers = api_instance.on_support_run_completed_with_http_info(webhook_payload_support_run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_support_run_completed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_support_run** | [**WebhookPayloadSupportRun**](WebhookPayloadSupportRun.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_support_run_failed

> on_support_run_failed(webhook_payload_support_run)

Support Assistant failed event

Fired when a Support Assistant question fails or expires. Failed runs are not billed.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_support_run =  # WebhookPayloadSupportRun | 

begin
  # Support Assistant failed event
  api_instance.on_support_run_failed(webhook_payload_support_run)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_support_run_failed: #{e}"
end
```

#### Using the on_support_run_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_support_run_failed_with_http_info(webhook_payload_support_run)

```ruby
begin
  # Support Assistant failed event
  data, status_code, headers = api_instance.on_support_run_failed_with_http_info(webhook_payload_support_run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_support_run_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_support_run** | [**WebhookPayloadSupportRun**](WebhookPayloadSupportRun.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_verification_approved

> on_verification_approved(on_verification_approved_request)

Verification approved event

Fired when a managed-OTP verification is approved (the user submitted the correct code to POST /v1/verify/verifications/{verificationId}/check). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_verification_approved_request =  # OnVerificationApprovedRequest | 

begin
  # Verification approved event
  api_instance.on_verification_approved(on_verification_approved_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_verification_approved: #{e}"
end
```

#### Using the on_verification_approved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_verification_approved_with_http_info(on_verification_approved_request)

```ruby
begin
  # Verification approved event
  data, status_code, headers = api_instance.on_verification_approved_with_http_info(on_verification_approved_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_verification_approved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_verification_approved_request** | [**OnVerificationApprovedRequest**](OnVerificationApprovedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_verification_failed

> on_verification_failed(on_verification_failed_request)

Verification failed event

Fired when a managed-OTP verification is exhausted (the maximum number of wrong code attempts was reached). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_verification_failed_request =  # OnVerificationFailedRequest | 

begin
  # Verification failed event
  api_instance.on_verification_failed(on_verification_failed_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_verification_failed: #{e}"
end
```

#### Using the on_verification_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_verification_failed_with_http_info(on_verification_failed_request)

```ruby
begin
  # Verification failed event
  data, status_code, headers = api_instance.on_verification_failed_with_http_info(on_verification_failed_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_verification_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_verification_failed_request** | [**OnVerificationFailedRequest**](OnVerificationFailedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_webhook_test

> on_webhook_test(webhook_payload_test)

Webhook test event

Fired when sending a test webhook to verify the endpoint configuration.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_test =  # WebhookPayloadTest | 

begin
  # Webhook test event
  api_instance.on_webhook_test(webhook_payload_test)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_webhook_test: #{e}"
end
```

#### Using the on_webhook_test_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_webhook_test_with_http_info(webhook_payload_test)

```ruby
begin
  # Webhook test event
  data, status_code, headers = api_instance.on_webhook_test_with_http_info(webhook_payload_test)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_webhook_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_test** | [**WebhookPayloadTest**](WebhookPayloadTest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_account_alert_received

> on_whats_app_account_alert_received(webhook_payload_whats_app_account_alert_received)

WhatsApp account alert received

Fired for each Meta `account_alerts` notification on a connected WhatsApp Business Account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_account_alert_received =  # WebhookPayloadWhatsAppAccountAlertReceived | 

begin
  # WhatsApp account alert received
  api_instance.on_whats_app_account_alert_received(webhook_payload_whats_app_account_alert_received)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_alert_received: #{e}"
end
```

#### Using the on_whats_app_account_alert_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_account_alert_received_with_http_info(webhook_payload_whats_app_account_alert_received)

```ruby
begin
  # WhatsApp account alert received
  data, status_code, headers = api_instance.on_whats_app_account_alert_received_with_http_info(webhook_payload_whats_app_account_alert_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_alert_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_account_alert_received** | [**WebhookPayloadWhatsAppAccountAlertReceived**](WebhookPayloadWhatsAppAccountAlertReceived.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_account_name_status_updated

> on_whats_app_account_name_status_updated(webhook_payload_whats_app_account_name_status_updated)

WhatsApp display-name review outcome event

Fired when Meta finishes reviewing a WhatsApp Business display-name change. Forwarded from Meta's `phone_number_name_update` webhook field on the WhatsApp Business Account.  - It fires only on a review outcome: `name.status` APPROVED, DECLINED, or PENDING_REVIEW. - A name applied without review reports `name_status: AVAILABLE_WITHOUT_REVIEW` on the phone node instead, and produces no event here. - `decision` REJECTED maps to DECLINED and DEFERRED maps to PENDING_REVIEW, matching the `name_status` vocabulary returned by `GET /v1/whatsapp/number-info`.  Delivery is at-least-once; dedupe on `(account.accountId, name.status, name.requestedName)`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_account_name_status_updated =  # WebhookPayloadWhatsAppAccountNameStatusUpdated | 

begin
  # WhatsApp display-name review outcome event
  api_instance.on_whats_app_account_name_status_updated(webhook_payload_whats_app_account_name_status_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_name_status_updated: #{e}"
end
```

#### Using the on_whats_app_account_name_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_account_name_status_updated_with_http_info(webhook_payload_whats_app_account_name_status_updated)

```ruby
begin
  # WhatsApp display-name review outcome event
  data, status_code, headers = api_instance.on_whats_app_account_name_status_updated_with_http_info(webhook_payload_whats_app_account_name_status_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_name_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_account_name_status_updated** | [**WebhookPayloadWhatsAppAccountNameStatusUpdated**](WebhookPayloadWhatsAppAccountNameStatusUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_account_quality_updated

> on_whats_app_account_quality_updated(webhook_payload_whats_app_account_quality_updated)

WhatsApp quality rating or messaging limit changed

Fired when a connected WhatsApp number's quality rating or messaging limit tier changes. Delivery is at-least-once; dedupe on the event `id`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_account_quality_updated =  # WebhookPayloadWhatsAppAccountQualityUpdated | 

begin
  # WhatsApp quality rating or messaging limit changed
  api_instance.on_whats_app_account_quality_updated(webhook_payload_whats_app_account_quality_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_quality_updated: #{e}"
end
```

#### Using the on_whats_app_account_quality_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_account_quality_updated_with_http_info(webhook_payload_whats_app_account_quality_updated)

```ruby
begin
  # WhatsApp quality rating or messaging limit changed
  data, status_code, headers = api_instance.on_whats_app_account_quality_updated_with_http_info(webhook_payload_whats_app_account_quality_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_quality_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_account_quality_updated** | [**WebhookPayloadWhatsAppAccountQualityUpdated**](WebhookPayloadWhatsAppAccountQualityUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_account_status_updated

> on_whats_app_account_status_updated(webhook_payload_whats_app_account_status_updated)

WhatsApp Business Account restricted or reinstated

Fired when Meta restricts, disables, deletes or reinstates the WhatsApp Business Account, once per connected number on it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_account_status_updated =  # WebhookPayloadWhatsAppAccountStatusUpdated | 

begin
  # WhatsApp Business Account restricted or reinstated
  api_instance.on_whats_app_account_status_updated(webhook_payload_whats_app_account_status_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_status_updated: #{e}"
end
```

#### Using the on_whats_app_account_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_account_status_updated_with_http_info(webhook_payload_whats_app_account_status_updated)

```ruby
begin
  # WhatsApp Business Account restricted or reinstated
  data, status_code, headers = api_instance.on_whats_app_account_status_updated_with_http_info(webhook_payload_whats_app_account_status_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_account_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_account_status_updated** | [**WebhookPayloadWhatsAppAccountStatusUpdated**](WebhookPayloadWhatsAppAccountStatusUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_automatic_event

> on_whats_app_automatic_event(on_whats_app_automatic_event_request)

WhatsApp automatic event detected

Fired when Meta's automatic event identification detects a lead or purchase in a Click-to-WhatsApp conversation. The identification is opt-in during Embedded Signup and not available for EU/UK/JP businesses.  - Branch on `eventName` (`LeadSubmitted` | `Purchase`). - It carries the `ctwa_clid`.  Meta omits that clid on a minority of referrals on any number (coexistence or not, most often WhatsApp Status placements). When it does, this event can supply it and Zernio writes it back onto the conversation, so POST /v1/whatsapp/conversions becomes usable for the thread. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_automatic_event_request =  # OnWhatsAppAutomaticEventRequest | 

begin
  # WhatsApp automatic event detected
  api_instance.on_whats_app_automatic_event(on_whats_app_automatic_event_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_automatic_event: #{e}"
end
```

#### Using the on_whats_app_automatic_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_automatic_event_with_http_info(on_whats_app_automatic_event_request)

```ruby
begin
  # WhatsApp automatic event detected
  data, status_code, headers = api_instance.on_whats_app_automatic_event_with_http_info(on_whats_app_automatic_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_automatic_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_automatic_event_request** | [**OnWhatsAppAutomaticEventRequest**](OnWhatsAppAutomaticEventRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_contact_identity_changed

> on_whats_app_contact_identity_changed(webhook_payload_whats_app_contact_identity_changed)

WhatsApp contact identity changed event

Fired when a WhatsApp user changes phone number or Meta regenerates their business-scoped user id (BSUID). Carries the previous and current identifiers so you can re-key records stored against the old phone number or BSUID. Delivery is at-least-once; dedupe on the event `id`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_contact_identity_changed =  # WebhookPayloadWhatsAppContactIdentityChanged | 

begin
  # WhatsApp contact identity changed event
  api_instance.on_whats_app_contact_identity_changed(webhook_payload_whats_app_contact_identity_changed)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_contact_identity_changed: #{e}"
end
```

#### Using the on_whats_app_contact_identity_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_contact_identity_changed_with_http_info(webhook_payload_whats_app_contact_identity_changed)

```ruby
begin
  # WhatsApp contact identity changed event
  data, status_code, headers = api_instance.on_whats_app_contact_identity_changed_with_http_info(webhook_payload_whats_app_contact_identity_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_contact_identity_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_contact_identity_changed** | [**WebhookPayloadWhatsAppContactIdentityChanged**](WebhookPayloadWhatsAppContactIdentityChanged.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_action_required

> on_whats_app_number_action_required(on_whats_app_number_action_required_request)

WhatsApp number action required event

Fired when the regulator asks for more information on an already-placed regulated number order.  The number stays pending (nothing was rejected). The customer can provide the missing information from the dashboard, or via the remediation endpoint.  - `reason` carries the regulator's request verbatim when available. - `requirements` lists every requirement on the order with the reviewer's current verdict. The `declined` ones are what to fix, keyed by the same `requirementId` the remediation endpoint uses. - Verdicts only change when a reviewer acts, so they describe the review at `reviewedAt`, the time of the reviewer's last comment. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_action_required_request =  # OnWhatsAppNumberActionRequiredRequest | 

begin
  # WhatsApp number action required event
  api_instance.on_whats_app_number_action_required(on_whats_app_number_action_required_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_action_required: #{e}"
end
```

#### Using the on_whats_app_number_action_required_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_action_required_with_http_info(on_whats_app_number_action_required_request)

```ruby
begin
  # WhatsApp number action required event
  data, status_code, headers = api_instance.on_whats_app_number_action_required_with_http_info(on_whats_app_number_action_required_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_action_required_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_action_required_request** | [**OnWhatsAppNumberActionRequiredRequest**](OnWhatsAppNumberActionRequiredRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_activated

> on_whats_app_number_activated(on_whats_app_number_activated_request)

WhatsApp number activated event

Fired when a purchased WhatsApp number becomes active and usable. Both the synchronous (Tier 1/2) path and the asynchronous regulated (Tier 3/4) path land here. Lets integrators react without polling GET /v1/phone-numbers. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_activated_request =  # OnWhatsAppNumberActivatedRequest | 

begin
  # WhatsApp number activated event
  api_instance.on_whats_app_number_activated(on_whats_app_number_activated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_activated: #{e}"
end
```

#### Using the on_whats_app_number_activated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_activated_with_http_info(on_whats_app_number_activated_request)

```ruby
begin
  # WhatsApp number activated event
  data, status_code, headers = api_instance.on_whats_app_number_activated_with_http_info(on_whats_app_number_activated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_activated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_activated_request** | [**OnWhatsAppNumberActivatedRequest**](OnWhatsAppNumberActivatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_declined

> on_whats_app_number_declined(on_whats_app_number_declined_request)

WhatsApp number declined event

Fired when a regulated (Tier 3/4) number order is declined or fails review. The number is never billed. `reason` carries the reviewer's rejection reason when available. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_declined_request =  # OnWhatsAppNumberDeclinedRequest | 

begin
  # WhatsApp number declined event
  api_instance.on_whats_app_number_declined(on_whats_app_number_declined_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_declined: #{e}"
end
```

#### Using the on_whats_app_number_declined_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_declined_with_http_info(on_whats_app_number_declined_request)

```ruby
begin
  # WhatsApp number declined event
  data, status_code, headers = api_instance.on_whats_app_number_declined_with_http_info(on_whats_app_number_declined_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_declined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_declined_request** | [**OnWhatsAppNumberDeclinedRequest**](OnWhatsAppNumberDeclinedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_kyc_submitted

> on_whats_app_number_kyc_submitted(on_whats_app_number_kyc_submitted_request)

WhatsApp number KYC submitted event

Fired when an end customer completes a hosted KYC share link (POST /v1/phone-numbers/kyc/share). The number enters review (pending_regulatory) under your account; `whatsapp.number.activated` or `whatsapp.number.declined` follows once the provider rules on it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_kyc_submitted_request =  # OnWhatsAppNumberKycSubmittedRequest | 

begin
  # WhatsApp number KYC submitted event
  api_instance.on_whats_app_number_kyc_submitted(on_whats_app_number_kyc_submitted_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_kyc_submitted: #{e}"
end
```

#### Using the on_whats_app_number_kyc_submitted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_kyc_submitted_with_http_info(on_whats_app_number_kyc_submitted_request)

```ruby
begin
  # WhatsApp number KYC submitted event
  data, status_code, headers = api_instance.on_whats_app_number_kyc_submitted_with_http_info(on_whats_app_number_kyc_submitted_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_kyc_submitted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_kyc_submitted_request** | [**OnWhatsAppNumberKycSubmittedRequest**](OnWhatsAppNumberKycSubmittedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_reactivated

> on_whats_app_number_reactivated(on_whats_app_number_reactivated_request)

WhatsApp number reactivated event

Fired when a suspended number is reactivated (e.g. the payment recovered) and is usable again. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_reactivated_request =  # OnWhatsAppNumberReactivatedRequest | 

begin
  # WhatsApp number reactivated event
  api_instance.on_whats_app_number_reactivated(on_whats_app_number_reactivated_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_reactivated: #{e}"
end
```

#### Using the on_whats_app_number_reactivated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_reactivated_with_http_info(on_whats_app_number_reactivated_request)

```ruby
begin
  # WhatsApp number reactivated event
  data, status_code, headers = api_instance.on_whats_app_number_reactivated_with_http_info(on_whats_app_number_reactivated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_reactivated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_reactivated_request** | [**OnWhatsAppNumberReactivatedRequest**](OnWhatsAppNumberReactivatedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_released

> on_whats_app_number_released(on_whats_app_number_released_request)

WhatsApp number released event

Fired when a number is released and is no longer usable (by the user, a billing cleanup, or an admin). Terminal. `reason` carries the cause (e.g. `user_requested`, `cleanup_suspended`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_released_request =  # OnWhatsAppNumberReleasedRequest | 

begin
  # WhatsApp number released event
  api_instance.on_whats_app_number_released(on_whats_app_number_released_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_released: #{e}"
end
```

#### Using the on_whats_app_number_released_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_released_with_http_info(on_whats_app_number_released_request)

```ruby
begin
  # WhatsApp number released event
  data, status_code, headers = api_instance.on_whats_app_number_released_with_http_info(on_whats_app_number_released_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_released_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_released_request** | [**OnWhatsAppNumberReleasedRequest**](OnWhatsAppNumberReleasedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_suspended

> on_whats_app_number_suspended(on_whats_app_number_suspended_request)

WhatsApp number suspended event

Fired when an active number is suspended (e.g. a failed payment). The number stops working until the issue is resolved, after which a `whatsapp.number.reactivated` event is sent. `reason` carries the cause (e.g. `payment_failed`, `subscription_ended`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_suspended_request =  # OnWhatsAppNumberSuspendedRequest | 

begin
  # WhatsApp number suspended event
  api_instance.on_whats_app_number_suspended(on_whats_app_number_suspended_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_suspended: #{e}"
end
```

#### Using the on_whats_app_number_suspended_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_suspended_with_http_info(on_whats_app_number_suspended_request)

```ruby
begin
  # WhatsApp number suspended event
  data, status_code, headers = api_instance.on_whats_app_number_suspended_with_http_info(on_whats_app_number_suspended_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_suspended_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_suspended_request** | [**OnWhatsAppNumberSuspendedRequest**](OnWhatsAppNumberSuspendedRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_number_verification_required

> on_whats_app_number_verification_required(on_whats_app_number_verification_required_request)

WhatsApp number verification-required event

Fired when a regulated number has an out-of-band identity-verification step (e.g. Onfido). `verificationUrl` is the link to forward to the number's end user; the order completes once they pass. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
on_whats_app_number_verification_required_request =  # OnWhatsAppNumberVerificationRequiredRequest | 

begin
  # WhatsApp number verification-required event
  api_instance.on_whats_app_number_verification_required(on_whats_app_number_verification_required_request)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_verification_required: #{e}"
end
```

#### Using the on_whats_app_number_verification_required_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_number_verification_required_with_http_info(on_whats_app_number_verification_required_request)

```ruby
begin
  # WhatsApp number verification-required event
  data, status_code, headers = api_instance.on_whats_app_number_verification_required_with_http_info(on_whats_app_number_verification_required_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_number_verification_required_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_whats_app_number_verification_required_request** | [**OnWhatsAppNumberVerificationRequiredRequest**](OnWhatsAppNumberVerificationRequiredRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_template_category_updated

> on_whats_app_template_category_updated(webhook_payload_whats_app_template_category_updated)

WhatsApp template category updated event

Fired when Meta reclassifies a WhatsApp Business template's category after approval.  It is forwarded from Meta's `template_category_update` webhook field on the WhatsApp Business Account. Category drives Meta's per-conversation tariff and whether the template is subject to the recipient's marketing opt-out.  - `template.changeType` is `scheduled` (24h advance notice) or `applied`. - `template.category` is always the category right now. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_template_category_updated =  # WebhookPayloadWhatsAppTemplateCategoryUpdated | 

begin
  # WhatsApp template category updated event
  api_instance.on_whats_app_template_category_updated(webhook_payload_whats_app_template_category_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_template_category_updated: #{e}"
end
```

#### Using the on_whats_app_template_category_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_template_category_updated_with_http_info(webhook_payload_whats_app_template_category_updated)

```ruby
begin
  # WhatsApp template category updated event
  data, status_code, headers = api_instance.on_whats_app_template_category_updated_with_http_info(webhook_payload_whats_app_template_category_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_template_category_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_template_category_updated** | [**WebhookPayloadWhatsAppTemplateCategoryUpdated**](WebhookPayloadWhatsAppTemplateCategoryUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_whats_app_template_status_updated

> on_whats_app_template_status_updated(webhook_payload_whats_app_template_status_updated)

WhatsApp template status updated event

Fired when Meta finishes (re)reviewing a WhatsApp Business template attached to a connected WABA. Forwarded from Meta's `message_template_status_update` webhook field on the WhatsApp Business Account. Consumers branch on `template.status` (APPROVED, REJECTED, PENDING, PAUSED, DISABLED, IN_APPEAL, PENDING_DELETION). Meta does not include the previous status or the template's category in this event. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_whats_app_template_status_updated =  # WebhookPayloadWhatsAppTemplateStatusUpdated | 

begin
  # WhatsApp template status updated event
  api_instance.on_whats_app_template_status_updated(webhook_payload_whats_app_template_status_updated)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_template_status_updated: #{e}"
end
```

#### Using the on_whats_app_template_status_updated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_whats_app_template_status_updated_with_http_info(webhook_payload_whats_app_template_status_updated)

```ruby
begin
  # WhatsApp template status updated event
  data, status_code, headers = api_instance.on_whats_app_template_status_updated_with_http_info(webhook_payload_whats_app_template_status_updated)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_whats_app_template_status_updated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_whats_app_template_status_updated** | [**WebhookPayloadWhatsAppTemplateStatusUpdated**](WebhookPayloadWhatsAppTemplateStatusUpdated.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_workflow_run_completed

> on_workflow_run_completed(webhook_payload_workflow_run)

Workflow run completed event

Fired when a workflow run ends; execution.status is completed, or exited for a run ended on purpose before its last node.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_workflow_run =  # WebhookPayloadWorkflowRun | 

begin
  # Workflow run completed event
  api_instance.on_workflow_run_completed(webhook_payload_workflow_run)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_completed: #{e}"
end
```

#### Using the on_workflow_run_completed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_workflow_run_completed_with_http_info(webhook_payload_workflow_run)

```ruby
begin
  # Workflow run completed event
  data, status_code, headers = api_instance.on_workflow_run_completed_with_http_info(webhook_payload_workflow_run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_completed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_workflow_run** | [**WebhookPayloadWorkflowRun**](WebhookPayloadWorkflowRun.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_workflow_run_failed

> on_workflow_run_failed(webhook_payload_workflow_run)

Workflow run failed event

Fired when a workflow run fails; error says which node failed and why.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_workflow_run =  # WebhookPayloadWorkflowRun | 

begin
  # Workflow run failed event
  api_instance.on_workflow_run_failed(webhook_payload_workflow_run)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_failed: #{e}"
end
```

#### Using the on_workflow_run_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_workflow_run_failed_with_http_info(webhook_payload_workflow_run)

```ruby
begin
  # Workflow run failed event
  data, status_code, headers = api_instance.on_workflow_run_failed_with_http_info(webhook_payload_workflow_run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_workflow_run** | [**WebhookPayloadWorkflowRun**](WebhookPayloadWorkflowRun.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_workflow_run_started

> on_workflow_run_started(webhook_payload_workflow_run)

Workflow run started event

Fired when a workflow run starts for a conversation.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhookEventsApi.new
webhook_payload_workflow_run =  # WebhookPayloadWorkflowRun | 

begin
  # Workflow run started event
  api_instance.on_workflow_run_started(webhook_payload_workflow_run)
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_started: #{e}"
end
```

#### Using the on_workflow_run_started_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_workflow_run_started_with_http_info(webhook_payload_workflow_run)

```ruby
begin
  # Workflow run started event
  data, status_code, headers = api_instance.on_workflow_run_started_with_http_info(webhook_payload_workflow_run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WebhookEventsApi->on_workflow_run_started_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_workflow_run** | [**WebhookPayloadWorkflowRun**](WebhookPayloadWorkflowRun.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

