# Zernio::RcsAgentProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **logo_url** | **String** | 224x224, max 50 KB. Upload any image through POST /v1/rcs/assets to get a compliant URL. |  |
| **hero_url** | **String** | Banner, 1440x448, max 200 KB. Upload through POST /v1/rcs/assets. |  |
| **brand_color** | **String** | Hex colour, e.g. #1A73E8. Needs 4.5:1 contrast against white. |  |
| **privacy_policy_url** | **String** |  |  |
| **terms_url** | **String** |  |  |
| **phone** | [**RcsAgentProfilePhone**](RcsAgentProfilePhone.md) |  | [optional] |
| **website** | [**RcsAgentProfileWebsite**](RcsAgentProfileWebsite.md) |  | [optional] |
| **email** | [**RcsAgentProfileEmail**](RcsAgentProfileEmail.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsAgentProfile.new(
  description: null,
  logo_url: null,
  hero_url: null,
  brand_color: null,
  privacy_policy_url: null,
  terms_url: null,
  phone: null,
  website: null,
  email: null
)
```

