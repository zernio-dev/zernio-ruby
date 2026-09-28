# Zernio::ListAdAccountUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **business_id** | **String** |  | [optional] |
| **users** | [**Array&lt;MetaAssignedUser&gt;**](MetaAssignedUser.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAccountUsers200Response.new(
  ad_account_id: null,
  business_id: null,
  users: null
)
```

