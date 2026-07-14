# Zernio::LinkedInAdsPlatformDataFollower

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | [**LinkedInAdsPlatformDataFollowerHeadline**](LinkedInAdsPlatformDataFollowerHeadline.md) |  |  |
| **description** | [**LinkedInAdsPlatformDataFollowerDescription**](LinkedInAdsPlatformDataFollowerDescription.md) |  |  |
| **call_to_action** | **String** |  |  |
| **logo_url** | **String** |  | [optional] |
| **organization_name** | **String** |  | [optional] |
| **show_member_profile_photo** | **Boolean** | Defaults to true. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataFollower.new(
  headline: null,
  description: null,
  call_to_action: null,
  logo_url: null,
  organization_name: null,
  show_member_profile_photo: null
)
```

