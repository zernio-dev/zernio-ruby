# Zernio::AddAdConversionAssociations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **succeeded** | **Array&lt;String&gt;** | Numeric campaign IDs that were successfully associated. | [optional] |
| **failed** | [**Array&lt;AddAdConversionAssociations200ResponseFailedInner&gt;**](AddAdConversionAssociations200ResponseFailedInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAdConversionAssociations200Response.new(
  platform: null,
  succeeded: null,
  failed: null
)
```

