# Zernio::CreateInboxConversationRequestHeaderLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude in decimal degrees. |  |
| **longitude** | **Float** | Longitude in decimal degrees. |  |
| **name** | **String** | Location name shown to the recipient (e.g. a business name). | [optional] |
| **address** | **String** | Location address shown to the recipient. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequestHeaderLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

