# Zernio::ConversionAuditReportConsentScan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted** | **String** | The banner the scan accepted, or null when no accept button was found. |  |
| **fired_before_consent** | **Array&lt;String&gt;** |  |  |
| **fired_after_consent** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportConsentScan.new(
  accepted: null,
  fired_before_consent: null,
  fired_after_consent: null
)
```

