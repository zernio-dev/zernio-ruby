# Zernio::WebhookPayloadMessageMetadataLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude in decimal degrees. | [optional] |
| **longitude** | **Float** | Longitude in decimal degrees. | [optional] |
| **name** | **String** | Location name, when the user shared a named place. | [optional] |
| **address** | **String** | Street address, when Meta sends one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

