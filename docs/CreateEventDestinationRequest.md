# Zernio::CreateEventDestinationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Connected ads account ID that owns the destination. |  |
| **destination_id** | **String** |  |  |
| **event_names** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateEventDestinationRequest.new(
  profile_id: null,
  account_id: null,
  destination_id: null,
  event_names: null
)
```

