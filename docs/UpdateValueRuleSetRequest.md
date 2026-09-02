# Zernio::UpdateValueRuleSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **name** | **String** | Required: the update replaces the whole set. |  |
| **rules** | [**Array&lt;ValueRule&gt;**](ValueRule.md) | The COMPLETE rule list. Omitting a rule deletes it on Meta. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateValueRuleSetRequest.new(
  account_id: null,
  name: null,
  rules: null
)
```

