# Zernio::RemoveConversionAssociations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **succeeded** | **Array&lt;String&gt;** | Numeric campaign IDs that were successfully removed. | [optional] |
| **failed** | [**Array&lt;AddConversionAssociations200ResponseFailedInner&gt;**](AddConversionAssociations200ResponseFailedInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveConversionAssociations200Response.new(
  platform: null,
  succeeded: null,
  failed: null
)
```

