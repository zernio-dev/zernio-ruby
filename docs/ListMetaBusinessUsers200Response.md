# Zernio::ListMetaBusinessUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** |  | [optional] |
| **users** | [**Array&lt;MetaBusinessUser&gt;**](MetaBusinessUser.md) |  | [optional] |
| **system_users** | [**Array&lt;MetaBusinessUser&gt;**](MetaBusinessUser.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListMetaBusinessUsers200Response.new(
  business_id: null,
  users: null,
  system_users: null
)
```

