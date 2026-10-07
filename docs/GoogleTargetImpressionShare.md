# Zernio::GoogleTargetImpressionShare

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** |  |  |
| **percent** | **Float** | Target share of impressions, in percent (65 &#x3D; 65%). Sent to Google as location_fraction_micros (1% &#x3D; 10,000). |  |
| **max_cpc** | **Float** | Max CPC bid limit, in the account&#39;s currency units. Google requires it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleTargetImpressionShare.new(
  location: null,
  percent: null,
  max_cpc: null
)
```

