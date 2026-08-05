# Zernio::CreateValueRuleSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **name** | **String** |  |  |
| **rules** | [**Array&lt;ValueRule&gt;**](ValueRule.md) | Evaluated in order; the first matching rule wins. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateValueRuleSetRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  rules: null
)
```

