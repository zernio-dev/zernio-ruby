# Zernio::CreateStandaloneAdRequestImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **landscape** | **String** | Landscape 1.91:1 marketing image URL (e.g. 1200x628). Also accepted via the top-level &#x60;imageUrl&#x60; for backward compatibility. | [optional] |
| **square** | **String** | Square 1:1 marketing image URL (e.g. 1080x1080). Required for Google Display. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestImages.new(
  landscape: null,
  square: null
)
```

