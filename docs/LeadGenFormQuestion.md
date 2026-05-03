# Zernio::LeadGenFormQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Stable key returned in &#x60;field_data&#x60; on each lead. If omitted, Meta auto-derives one from &#x60;label&#x60;. | [optional] |
| **label** | **String** | Display text shown above the input. | [optional] |
| **type** | **String** |  |  |
| **options** | [**Array&lt;LeadGenFormQuestionOptionsInner&gt;**](LeadGenFormQuestionOptionsInner.md) | Required for MULTIPLE_CHOICE / CONDITIONAL questions. | [optional] |
| **inline_context** | **String** | Help text rendered below the field. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LeadGenFormQuestion.new(
  key: null,
  label: null,
  type: EMAIL,
  options: null,
  inline_context: null
)
```

