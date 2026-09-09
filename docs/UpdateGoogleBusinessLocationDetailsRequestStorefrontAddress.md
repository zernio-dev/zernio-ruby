# Zernio::UpdateGoogleBusinessLocationDetailsRequestStorefrontAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_code** | **String** | ISO 3166-1 alpha-2 country code (e.g. &#39;BR&#39;) | [optional] |
| **language_code** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **administrative_area** | **String** | State or province | [optional] |
| **locality** | **String** | City | [optional] |
| **address_lines** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleBusinessLocationDetailsRequestStorefrontAddress.new(
  region_code: null,
  language_code: null,
  postal_code: null,
  administrative_area: null,
  locality: null,
  address_lines: null
)
```

