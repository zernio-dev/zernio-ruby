# Zernio::GscDimensionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension** | **String** | Narrow dates with fromDate and toDate instead. |  |
| **operator** | **String** | Defaults to &#x60;equals&#x60;. | [optional] |
| **expression** | **String** | The value to match. Countries are ISO 3166-1 alpha-3 codes (&#x60;usa&#x60;), devices &#x60;DESKTOP&#x60;, &#x60;MOBILE&#x60; or &#x60;TABLET&#x60;, brandedClassification &#x60;BRANDED&#x60; or &#x60;NON_BRANDED&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GscDimensionFilter.new(
  dimension: null,
  operator: null,
  expression: null
)
```

