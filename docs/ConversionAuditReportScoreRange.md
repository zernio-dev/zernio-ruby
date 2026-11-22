# Zernio::ConversionAuditReportScoreRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **low** | **Float** | The score with every check the scan could not verify at zero. |  |
| **high** | **Float** | The score with every check the scan could not verify at full credit. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportScoreRange.new(
  low: null,
  high: null
)
```

