# Zernio::TwitterPlatformDataSensitiveMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adult_content** | **Boolean** | Content contains adult material. | [optional] |
| **graphic_violence** | **Boolean** | Content depicts graphic violence. | [optional] |
| **other** | **Boolean** | Content has other sensitive characteristics. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TwitterPlatformDataSensitiveMedia.new(
  adult_content: null,
  graphic_violence: null,
  other: null
)
```

