# Zernio::MetaLeadFormLegalContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **privacy_policy** | [**MetaLeadFormLegalContentPrivacyPolicy**](MetaLeadFormLegalContentPrivacyPolicy.md) |  | [optional] |
| **custom_disclaimer** | **Object** | Set in Meta form builder only; there is no create parameter for it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadFormLegalContent.new(
  id: null,
  privacy_policy: null,
  custom_disclaimer: null
)
```

