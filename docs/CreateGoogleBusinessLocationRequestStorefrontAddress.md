# Zernio::CreateGoogleBusinessLocationRequestStorefrontAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_code** | **String** | CLDR region code (e.g. \&quot;ES\&quot;). |  |
| **language_code** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **administrative_area** | **String** |  | [optional] |
| **locality** | **String** |  | [optional] |
| **address_lines** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleBusinessLocationRequestStorefrontAddress.new(
  region_code: null,
  language_code: null,
  postal_code: null,
  administrative_area: null,
  locality: null,
  address_lines: null
)
```

