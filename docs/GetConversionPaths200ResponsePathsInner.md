# Zernio::GetConversionPaths200ResponsePathsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **steps** | **Array&lt;String&gt;** | Each touch as its kind, or &#x60;kind:platform&#x60; when it named a campaign. | [optional] |
| **conversions** | **Integer** |  | [optional] |
| **sales** | **Integer** | How many were purchases. | [optional] |
| **revenue** | **Float** | The value of the purchases, as sent. | [optional] |
| **avg_days** | **Float** | Average days from the first touch to the conversion. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetConversionPaths200ResponsePathsInner.new(
  steps: [&quot;ad_click:facebook&quot;,&quot;organic_search&quot;,&quot;lead_form:facebook&quot;],
  conversions: null,
  sales: null,
  revenue: null,
  avg_days: null
)
```

