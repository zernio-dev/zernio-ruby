# Zernio::GetAllAccountsHealth200ResponseAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **can_post** | **Boolean** |  | [optional] |
| **can_fetch_analytics** | **Boolean** |  | [optional] |
| **token_valid** | **Boolean** |  | [optional] |
| **token_expires_at** | **Time** |  | [optional] |
| **needs_reconnect** | **Boolean** | True when the token is expired or revoked, permissions are missing, the account is inactive, or the platform rejected its stored credentials (the same flag the account listing reports as needsReconnection). | [optional] |
| **issues** | **Array&lt;String&gt;** |  | [optional] |
| **owner_user_id** | **String** | User id of the profile owner, not necessarily the team member who connected the account. | [optional] |
| **disconnect_reason** | **String** | Why the connection is broken or its token refresh is failing, from the most recent current cause. Null when the connection is healthy, including when the account is unhealthy for another reason (analytics, messaging restriction, missing analytics scopes), or when no cause is stored. | [optional] |
| **disconnection_type** | **String** | intentional: deliberately disconnected by the user or by Zernio (for example a plan downgrade), not a token failure. unintentional: token expired or revoked, or an auth failure. Null when disconnectReason is null. | [optional] |
| **unhealthy_since** | **Time** | When the earliest current stored cause was recorded (the start of the outage); for an intentional disconnect, when it was disconnected. Null when the connection is healthy, including when the account is unhealthy for another reason (analytics, messaging restriction, missing analytics scopes), or when the time is unknown. | [optional] |
| **analytics_sync** | [**GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync**](GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync.md) |  | [optional] |
| **messaging_restriction** | [**GetAllAccountsHealth200ResponseAccountsInnerMessagingRestriction**](GetAllAccountsHealth200ResponseAccountsInnerMessagingRestriction.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAllAccountsHealth200ResponseAccountsInner.new(
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  profile_id: null,
  status: null,
  can_post: null,
  can_fetch_analytics: null,
  token_valid: null,
  token_expires_at: null,
  needs_reconnect: null,
  issues: null,
  owner_user_id: null,
  disconnect_reason: null,
  disconnection_type: null,
  unhealthy_since: null,
  analytics_sync: null,
  messaging_restriction: null
)
```

