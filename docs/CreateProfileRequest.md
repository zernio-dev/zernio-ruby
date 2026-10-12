# Zernio::CreateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **timezone** | **String** | IANA timezone new posts on this profile use when they name no &#x60;timezone&#x60;. Omit to keep UTC. An unknown name returns 400. | [optional] |
| **external_id** | **String** | Your own identifier for this profile, typically the id of the tenant or client it serves in your system (1 to 255 characters, trimmed). Unique among the profiles of the user who owns the profile: a duplicate returns 409 profile_external_id_conflict. Look a profile up by it with GET /v1/profiles?externalId&#x3D;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateProfileRequest.new(
  name: null,
  description: null,
  color: #ffeda0,
  timezone: Europe/Istanbul,
  external_id: tenant_42
)
```

