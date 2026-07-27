# Zernio::ValidatePostRequestPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **account_id** | **String** | Account to validate against. For twitter, resolves X Premium status to apply the 25000 character limit instead of 280. | [optional] |
| **custom_content** | **String** |  | [optional] |
| **platform_specific_data** | **Object** |  | [optional] |
| **custom_media** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePostRequestPlatformsInner.new(
  platform: null,
  account_id: null,
  custom_content: null,
  platform_specific_data: null,
  custom_media: null
)
```

