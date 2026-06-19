# Zernio::GetLeadForm200ResponseFormQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **type** | **String** | EMAIL, PHONE, FULL_NAME, FIRST_NAME, LAST_NAME, CUSTOM, … | [optional] |
| **options** | [**Array&lt;CreateLeadFormRequestQuestionsInnerOptionsInner&gt;**](CreateLeadFormRequestQuestionsInnerOptionsInner.md) |  | [optional] |
| **inline_context** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLeadForm200ResponseFormQuestionsInner.new(
  key: null,
  label: null,
  type: null,
  options: null,
  inline_context: null
)
```

