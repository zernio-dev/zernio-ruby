# Zernio::GetAccountHealth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **integration_lane** | **String** | TikTok only. The TikTok integration the account is connected through: business (TikTok for Business, Accounts API) or developer (the original integration). Absent on other platforms. | [optional] |
| **send_cap** | [**GetAccountHealth200ResponseSendCap**](GetAccountHealth200ResponseSendCap.md) |  | [optional] |
| **push** | **String** | Google and Microsoft only: state of the provider change-notification subscriptions behind &#x60;message.received&#x60; and &#x60;calendar.event.*&#x60;. &#x60;pending&#x60; means a granted area has no live subscription yet (retried every 6 hours), &#x60;failed&#x60; that renewals keep failing (reconnect the account). | [optional] |
| **mailbox** | [**GetAccountHealth200ResponseMailbox**](GetAccountHealth200ResponseMailbox.md) |  | [optional] |
| **sent_items_sync** | **String** | Microsoft only: how mail sent from the user&#39;s own mail client reaches &#x60;message.sent&#x60;. &#x60;poll&#x60; while Microsoft will not give Zernio a working Sent Items subscription for this mailbox (read every 5 minutes), &#x60;push&#x60; otherwise. | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **status** | **String** | Overall health status | [optional] |
| **token_status** | [**GetAccountHealth200ResponseTokenStatus**](GetAccountHealth200ResponseTokenStatus.md) |  | [optional] |
| **permissions** | [**GetAccountHealth200ResponsePermissions**](GetAccountHealth200ResponsePermissions.md) |  | [optional] |
| **issues** | **Array&lt;String&gt;** | List of issues found | [optional] |
| **recommendations** | **Array&lt;String&gt;** | Actionable recommendations to fix issues | [optional] |
| **owner_user_id** | **String** | User id of the profile owner, not necessarily the team member who connected the account. | [optional] |
| **disconnect_reason** | **String** | Why the connection is broken or its token refresh is failing, from the most recent current cause. Null when the connection is healthy, including when the account is unhealthy for another reason (analytics, messaging restriction, missing analytics scopes, Meta phone status), or when no cause is stored. | [optional] |
| **disconnection_type** | **String** | intentional: deliberately disconnected by the user or by Zernio (for example a plan downgrade), not a token failure. unintentional: token expired or revoked, or an auth failure. Null when disconnectReason is null. | [optional] |
| **unhealthy_since** | **Time** | When the earliest current stored cause was recorded (the start of the outage); for an intentional disconnect, when it was disconnected. Null when the connection is healthy, including when the account is unhealthy for another reason (analytics, messaging restriction, missing analytics scopes, Meta phone status), or when unknown. | [optional] |
| **analytics_sync** | [**GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync**](GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync.md) |  | [optional] |
| **inbound_activity** | [**InboundActivity**](InboundActivity.md) |  | [optional] |
| **publishing_restriction** | [**GetAllAccountsHealth200ResponseAccountsInnerPublishingRestriction**](GetAllAccountsHealth200ResponseAccountsInnerPublishingRestriction.md) |  | [optional] |
| **messaging_restriction** | [**GetAccountHealth200ResponseMessagingRestriction**](GetAccountHealth200ResponseMessagingRestriction.md) |  | [optional] |
| **platform_connection** | [**GetAccountHealth200ResponsePlatformConnection**](GetAccountHealth200ResponsePlatformConnection.md) |  | [optional] |
| **line_webhook** | [**GetAccountHealth200ResponseLineWebhook**](GetAccountHealth200ResponseLineWebhook.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200Response.new(
  account_id: null,
  platform: null,
  integration_lane: null,
  send_cap: null,
  push: null,
  mailbox: null,
  sent_items_sync: null,
  username: null,
  display_name: null,
  status: null,
  token_status: null,
  permissions: null,
  issues: null,
  recommendations: null,
  owner_user_id: null,
  disconnect_reason: null,
  disconnection_type: null,
  unhealthy_since: null,
  analytics_sync: null,
  inbound_activity: null,
  publishing_restriction: null,
  messaging_restriction: null,
  platform_connection: null,
  line_webhook: null
)
```

