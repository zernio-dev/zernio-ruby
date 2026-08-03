# Zernio::UpdatePostRequestPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **account_id** | **String** |  |  |
| **custom_content** | **String** | Platform-specific text override. | [optional] |
| **custom_media** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |
| **scheduled_for** | **Time** | Optional per-platform scheduled time override. | [optional] |
| **platform_specific_data** | **Hash&lt;String, Object&gt;** | A &lt;platform&gt;Settings namespace (e.g. facebookSettings, tiktokSettings) omitted from the request is preserved from the stored post. Sending the key replaces the whole namespace; it is not deep-merged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdatePostRequestPlatformsInner.new(
  platform: twitter,
  account_id: null,
  custom_content: null,
  custom_media: null,
  scheduled_for: null,
  platform_specific_data: null
)
```

