# Zernio::ListAdsTikTokIdentities200ResponseIdentitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_id** | **String** |  | [optional] |
| **identity_type** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **profile_image** | **String** |  | [optional] |
| **identity_authorized_bc_id** | **String** | Business Center that authorized a BC_AUTH_TT identity | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsTikTokIdentities200ResponseIdentitiesInner.new(
  identity_id: null,
  identity_type: null,
  display_name: null,
  username: null,
  profile_image: null,
  identity_authorized_bc_id: null
)
```

