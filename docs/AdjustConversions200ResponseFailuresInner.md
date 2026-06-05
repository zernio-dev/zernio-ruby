# Zernio::AdjustConversions200ResponseFailuresInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_index** | **Integer** | Index into the submitted adjustments array. | [optional] |
| **message** | **String** |  | [optional] |
| **code** | [**SendConversions200ResponseFailuresInnerCode**](SendConversions200ResponseFailuresInnerCode.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdjustConversions200ResponseFailuresInner.new(
  adjustment_index: null,
  message: null,
  code: null
)
```

