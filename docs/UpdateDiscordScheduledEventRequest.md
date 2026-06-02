# Zernio::UpdateDiscordScheduledEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **location** | **String** | For external events. | [optional] |
| **status** | **String** | Status transition. Most common: &#39;cancelled&#39; to cancel an event. | [optional] |
| **image_data_uri** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateDiscordScheduledEventRequest.new(
  account_id: null,
  name: null,
  description: null,
  starts_at: null,
  ends_at: null,
  location: null,
  status: null,
  image_data_uri: null
)
```

