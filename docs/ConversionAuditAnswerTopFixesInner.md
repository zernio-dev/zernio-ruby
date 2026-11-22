# Zernio::ConversionAuditAnswerTopFixesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The action to take. |  |
| **why** | **String** | Why it matters on this site. |  |
| **points** | **Integer** | Points the score gains when this fix alone lands, or null when the scan can&#39;t tell. |  |
| **compliance** | **Boolean** | True when what&#39;s at stake is data sent without consent rather than lost signal. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditAnswerTopFixesInner.new(
  title: null,
  why: null,
  points: null,
  compliance: null
)
```

