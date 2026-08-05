# Zernio::CreateValueRuleSet201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **value_rule_set_id** | **String** | The new rule set id. Meta does not document the create response body, so this is null on the (unobserved) case where it omits the id. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateValueRuleSet201Response.new(
  ad_account_id: null,
  value_rule_set_id: null
)
```

