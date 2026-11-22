# Zernio::GetLatestConversionAudit200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | [**ConversionAuditReport**](ConversionAuditReport.md) |  |  |
| **fix_prompt** | **String** | A prompt to paste into a coding agent. It lists the report&#39;s findings, then connecting Zernio, sending conversions server-side and verifying them. |  |
| **public_report** | [**ConversionAuditAnswerPublicReport**](ConversionAuditAnswerPublicReport.md) |  |  |
| **host** | **String** | The normalized host the report is stored under. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLatestConversionAudit200Response.new(
  report: null,
  fix_prompt: null,
  public_report: null,
  host: null
)
```

