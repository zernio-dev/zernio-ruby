# Zernio::CreateBroadcastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **message** | [**CreateBroadcastRequestMessage**](CreateBroadcastRequestMessage.md) |  | [optional] |
| **template** | [**CreateBroadcastRequestTemplate**](CreateBroadcastRequestTemplate.md) |  | [optional] |
| **segment_filters** | [**CreateBroadcastRequestSegmentFilters**](CreateBroadcastRequestSegmentFilters.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBroadcastRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  name: null,
  description: null,
  message: null,
  template: null,
  segment_filters: null
)
```

