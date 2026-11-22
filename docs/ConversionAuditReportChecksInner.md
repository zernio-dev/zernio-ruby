# Zernio::ConversionAuditReportChecksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable check id, such as &#x60;pixels&#x60;, &#x60;server-side&#x60;, &#x60;first-party&#x60;, &#x60;consent&#x60;, &#x60;consent-timing&#x60; or &#x60;match-quality&#x60;. New checks can appear. |  |
| **title** | **String** |  |  |
| **status** | **String** | &#x60;unknown&#x60; &#x3D; the scan cannot see it from outside; &#x60;not-applicable&#x60; checks are left out of the score. |  |
| **tier** | **String** | A &#x60;bonus&#x60; check can only add points, never cost them. | [optional] |
| **weight** | **Float** |  |  |
| **detail** | **String** |  |  |
| **points_to_gain** | **Float** | Points the score gains when this check alone is fixed. | [optional] |
| **verify** | [**ConversionAuditReportChecksInnerVerify**](ConversionAuditReportChecksInnerVerify.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportChecksInner.new(
  id: null,
  title: null,
  status: null,
  tier: null,
  weight: null,
  detail: null,
  points_to_gain: null,
  verify: null
)
```

