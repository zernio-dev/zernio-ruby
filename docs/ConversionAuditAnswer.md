# Zernio::ConversionAuditAnswer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | [**ConversionAuditReport**](ConversionAuditReport.md) |  |  |
| **networks** | [**Array&lt;ConversionAuditAnswerNetworksInner&gt;**](ConversionAuditAnswerNetworksInner.md) | Each ad network with its final setup and leak, computed exactly as the public report page shows them, best setup first. Empty when &#x60;report.scannerBlocked&#x60; is set: the scan could not see any network. |  |
| **top_fixes** | [**Array&lt;ConversionAuditAnswerTopFixesInner&gt;**](ConversionAuditAnswerTopFixesInner.md) | The few fixes that matter most, in the order the public report page lists them. |  |
| **fix_prompt** | **String** | A prompt to paste into a coding agent. It lists the report&#39;s findings, then connecting Zernio, sending conversions server-side and verifying them. |  |
| **public_report** | [**ConversionAuditAnswerPublicReport**](ConversionAuditAnswerPublicReport.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditAnswer.new(
  report: null,
  networks: null,
  top_fixes: null,
  fix_prompt: null,
  public_report: null
)
```

