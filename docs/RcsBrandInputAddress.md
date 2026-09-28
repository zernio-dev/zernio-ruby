# Zernio::RcsBrandInputAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line1** | **String** |  |  |
| **line2** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **state** | **String** | Required in the US. | [optional] |
| **postal_code** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2. Sets the launch market of agents under this brand. Spain (ES) is accepted but launches are paused at the carriers. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsBrandInputAddress.new(
  line1: null,
  line2: null,
  city: null,
  state: null,
  postal_code: null,
  country: null
)
```

