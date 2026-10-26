# Zernio::EventDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event destination ID, used to delete it. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** | Platform destination (pixel, conversion action, rule, ...). | [optional] |
| **event_names** | **Array&lt;String&gt;** | Event names forwarded to this destination; null forwards every event. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EventDestination.new(
  id: null,
  profile_id: null,
  account_id: null,
  destination_id: null,
  event_names: null,
  created_at: null
)
```

