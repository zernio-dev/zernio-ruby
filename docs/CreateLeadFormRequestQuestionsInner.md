# Zernio::CreateLeadFormRequestQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | EMAIL, PHONE, FULL_NAME, FIRST_NAME, LAST_NAME, CUSTOM, … |  |
| **key** | **String** | CUSTOM questions only. | [optional] |
| **label** | **String** | CUSTOM questions only. | [optional] |
| **options** | [**Array&lt;CreateLeadFormRequestQuestionsInnerOptionsInner&gt;**](CreateLeadFormRequestQuestionsInnerOptionsInner.md) |  | [optional] |
| **inline_context** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormRequestQuestionsInner.new(
  type: null,
  key: null,
  label: null,
  options: null,
  inline_context: null
)
```

