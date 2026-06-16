# Zernio::SharedAdAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Ad account id, in &#x60;act_&lt;digits&gt;&#x60; form. |  |
| **name** | **String** |  | [optional] |
| **business_id** | **String** | Business Manager id that owns the ad account, when reported. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SharedAdAccount.new(
  id: null,
  name: null,
  business_id: null
)
```

