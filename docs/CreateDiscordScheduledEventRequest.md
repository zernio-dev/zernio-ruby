# Zernio::CreateDiscordScheduledEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **starts_at** | **Time** | ISO 8601 start time. Must be in the future. |  |
| **entity** | [**CreateDiscordScheduledEventRequestEntity**](CreateDiscordScheduledEventRequestEntity.md) |  |  |
| **image_data_uri** | **String** | Optional cover image as a base64 data URI. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateDiscordScheduledEventRequest.new(
  account_id: null,
  name: null,
  description: null,
  starts_at: null,
  entity: null,
  image_data_uri: null
)
```

