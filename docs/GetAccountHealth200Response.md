# Zernio::GetAccountHealth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **integration_lane** | **String** | TikTok only. The TikTok integration the account is connected through: business (TikTok for Business, Accounts API) or developer (the original integration). Absent on other platforms. | [optional] |
| **send_cap** | [**GetAccountHealth200ResponseSendCap**](GetAccountHealth200ResponseSendCap.md) |  | [optional] |
| **push** | **String** | Google and Microsoft only: state of the provider change-notification subscriptions behind &#x60;message.received&#x60; and &#x60;calendar.event.*&#x60;. &#x60;pending&#x60; means a granted area has no live subscription yet (retried every 6 hours), &#x60;failed&#x60; that renewals keep failing (reconnect the account). | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **status** | **String** | Overall health status | [optional] |
| **token_status** | [**GetAccountHealth200ResponseTokenStatus**](GetAccountHealth200ResponseTokenStatus.md) |  | [optional] |
| **permissions** | [**GetAccountHealth200ResponsePermissions**](GetAccountHealth200ResponsePermissions.md) |  | [optional] |
| **issues** | **Array&lt;String&gt;** | List of issues found | [optional] |
| **recommendations** | **Array&lt;String&gt;** | Actionable recommendations to fix issues | [optional] |
| **analytics_sync** | [**GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync**](GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync.md) |  | [optional] |
| **messaging_restriction** | [**GetAccountHealth200ResponseMessagingRestriction**](GetAccountHealth200ResponseMessagingRestriction.md) |  | [optional] |
| **platform_connection** | [**GetAccountHealth200ResponsePlatformConnection**](GetAccountHealth200ResponsePlatformConnection.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200Response.new(
  account_id: null,
  platform: null,
  integration_lane: null,
  send_cap: null,
  push: null,
  username: null,
  display_name: null,
  status: null,
  token_status: null,
  permissions: null,
  issues: null,
  recommendations: null,
  analytics_sync: null,
  messaging_restriction: null,
  platform_connection: null
)
```

