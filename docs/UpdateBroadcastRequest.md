# Zernio::UpdateBroadcastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **message** | [**UpdateBroadcastRequestMessage**](UpdateBroadcastRequestMessage.md) |  | [optional] |
| **template** | [**UpdateBroadcastRequestTemplate**](UpdateBroadcastRequestTemplate.md) |  | [optional] |
| **segment_filters** | **Object** | Recipient segment filters (tags, channels, subscription state). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBroadcastRequest.new(
  name: null,
  description: null,
  message: null,
  template: null,
  segment_filters: null
)
```

