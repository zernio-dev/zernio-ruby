# Zernio::UpdateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** | Set to null to clear the description. | [optional] |
| **color** | **String** |  | [optional] |
| **timezone** | **String** | IANA timezone new posts on this profile use when they name no &#x60;timezone&#x60;. Set to null to go back to UTC. An unknown name returns 400. | [optional] |
| **is_default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateProfileRequest.new(
  name: null,
  description: null,
  color: null,
  timezone: Europe/Istanbul,
  is_default: null
)
```

