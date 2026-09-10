# Zernio::WebhookPayloadMessageSentMetadataLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude in decimal degrees. | [optional] |
| **longitude** | **Float** | Longitude in decimal degrees. | [optional] |
| **name** | **String** | Location name, when one was given. | [optional] |
| **address** | **String** | Street address, when one was given. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSentMetadataLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

