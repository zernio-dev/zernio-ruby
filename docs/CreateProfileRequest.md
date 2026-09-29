# Zernio::CreateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **timezone** | **String** | IANA timezone new posts on this profile use when they name no &#x60;timezone&#x60;. Omit to keep UTC. An unknown name returns 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateProfileRequest.new(
  name: null,
  description: null,
  color: #ffeda0,
  timezone: Europe/Istanbul
)
```

