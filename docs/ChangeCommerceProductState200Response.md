# Zernio::ChangeCommerceProductState200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **succeeded** | **Array&lt;String&gt;** |  | [optional] |
| **failed** | [**Array&lt;ChangeCommerceProductState200ResponseFailedInner&gt;**](ChangeCommerceProductState200ResponseFailedInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ChangeCommerceProductState200Response.new(
  action: null,
  succeeded: null,
  failed: null
)
```

