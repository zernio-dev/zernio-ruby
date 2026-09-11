# Zernio::GooglePmaxAssetGroupUpdateImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **landscape** | **Array&lt;String&gt;** | Replaces MARKETING_IMAGE assets. Aspect ratio 1.91:1, minimum 600 x 314 pixels. | [optional] |
| **square** | **Array&lt;String&gt;** | Replaces SQUARE_MARKETING_IMAGE assets. Aspect ratio 1:1, minimum 300 x 300 pixels. | [optional] |
| **logo** | **Array&lt;String&gt;** | Replaces LOGO assets. Aspect ratio 1:1, minimum 128 x 128 pixels. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupUpdateImages.new(
  landscape: null,
  square: null,
  logo: null
)
```

