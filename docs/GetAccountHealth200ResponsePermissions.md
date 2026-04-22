# Zernio::GetAccountHealth200ResponsePermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posting** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **analytics** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **optional** | [**Array&lt;GetAccountHealth200ResponsePermissionsPostingInner&gt;**](GetAccountHealth200ResponsePermissionsPostingInner.md) |  | [optional] |
| **can_post** | **Boolean** |  | [optional] |
| **can_fetch_analytics** | **Boolean** |  | [optional] |
| **missing_required** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponsePermissions.new(
  posting: null,
  analytics: null,
  optional: null,
  can_post: null,
  can_fetch_analytics: null,
  missing_required: null
)
```

