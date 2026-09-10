# Zernio::GooglePmaxAssetGroupInputImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **landscape** | **Array&lt;String&gt;** | Landscape marketing images. Aspect ratio 1.91:1, minimum 600 x 314 pixels. |  |
| **square** | **Array&lt;String&gt;** | Square marketing images. Aspect ratio 1:1, minimum 300 x 300 pixels. |  |
| **logo** | **Array&lt;String&gt;** | Required square logos. Aspect ratio 1:1, minimum 128 x 128 pixels. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupInputImages.new(
  landscape: null,
  square: null,
  logo: null
)
```

