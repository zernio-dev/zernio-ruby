# Zernio::UpdatePostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** |  | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **tiktok_settings** | [**TikTokPlatformData**](TikTokPlatformData.md) | Root-level TikTok settings applied to all TikTok platforms. Merged into each platform&#39;s platformSpecificData, with platform-specific settings taking precedence. | [optional] |
| **facebook_settings** | [**FacebookPlatformData**](FacebookPlatformData.md) | Root-level Facebook settings applied to all Facebook platforms. Merged into each platform&#39;s platformSpecificData, with platform-specific settings taking precedence. | [optional] |
| **recycling** | [**RecyclingConfig**](RecyclingConfig.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdatePostRequest.new(
  content: null,
  scheduled_for: null,
  tiktok_settings: null,
  facebook_settings: null,
  recycling: null
)
```

