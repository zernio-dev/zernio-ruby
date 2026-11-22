# Zernio::ConversionAuditReportConsent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cmp** | **String** | Consent banner vendor, when recognized. |  |
| **google_consent_mode** | **String** |  |  |
| **defaults_to_denied** | **Boolean** | True when the page denies ad storage until the visitor agrees. |  |
| **evidence** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportConsent.new(
  cmp: null,
  google_consent_mode: null,
  defaults_to_denied: null,
  evidence: null
)
```

