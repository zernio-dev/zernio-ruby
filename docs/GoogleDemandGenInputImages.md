# Zernio::GoogleDemandGenInputImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **landscape** | **Array&lt;String&gt;** | 1.91:1, at least 600x314. | [optional] |
| **square** | **Array&lt;String&gt;** | 1:1, at least 300x300. | [optional] |
| **portrait** | **Array&lt;String&gt;** | 4:5, at least 480x600. | [optional] |
| **logo** | **Array&lt;String&gt;** | 1:1, at least 128x128. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleDemandGenInputImages.new(
  landscape: null,
  square: null,
  portrait: null,
  logo: null
)
```

