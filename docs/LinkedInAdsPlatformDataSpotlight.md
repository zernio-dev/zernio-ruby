# Zernio::LinkedInAdsPlatformDataSpotlight

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **description** | **String** | Mutually exclusive with backgroundImageUrl. | [optional] |
| **call_to_action** | **String** | Button label text. |  |
| **landing_url** | **String** |  |  |
| **logo_url** | **String** |  | [optional] |
| **organization_name** | **String** |  | [optional] |
| **show_member_profile_photo** | **Boolean** | Defaults to true. | [optional] |
| **background_image_url** | **String** | Custom background. Replaces the description and the profile photo. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataSpotlight.new(
  headline: null,
  description: null,
  call_to_action: null,
  landing_url: null,
  logo_url: null,
  organization_name: null,
  show_member_profile_photo: null,
  background_image_url: null
)
```

