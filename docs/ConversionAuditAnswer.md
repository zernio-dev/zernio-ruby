# Zernio::ConversionAuditAnswer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | [**ConversionAuditReport**](ConversionAuditReport.md) |  |  |
| **fix_prompt** | **String** | A prompt to paste into a coding agent. It lists the report&#39;s findings, then connecting Zernio, sending conversions server-side and verifying them. |  |
| **public_report** | [**ConversionAuditAnswerPublicReport**](ConversionAuditAnswerPublicReport.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditAnswer.new(
  report: null,
  fix_prompt: null,
  public_report: null
)
```

