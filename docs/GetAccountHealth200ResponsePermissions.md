# Zernio::GetAccountHealth200ResponsePermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posting** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **analytics** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **optional** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **can_post** | **Boolean** | Whether the granted OAuth scopes allow posting. Scopes only: for WhatsApp, whether Meta lets the number send is &#x60;platformConnection.phoneStatus&#x60; and the overall &#x60;status&#x60;. | [optional] |
| **can_fetch_analytics** | **Boolean** |  | [optional] |
| **analytics_supported** | **Boolean** | Whether analytics is in scope for this account at all (the platform offers analytics and it was requested at connect). False means canFetchAnalytics is not a problem to fix; true with canFetchAnalytics false means analytics needs a reconnect. | [optional] |
| **missing_required** | **Array&lt;String&gt;** |  | [optional] |
| **scope_areas** | **Hash&lt;String, String&gt;** | Present when the account connected with &#x60;scopes&#x60; or through your own OAuth app: each permission area the platform splits, as granted, missing or not_requested. An area never requested does not make the account unhealthy. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponsePermissions.new(
  posting: null,
  analytics: null,
  optional: null,
  can_post: null,
  can_fetch_analytics: null,
  analytics_supported: null,
  missing_required: null,
  scope_areas: null
)
```

