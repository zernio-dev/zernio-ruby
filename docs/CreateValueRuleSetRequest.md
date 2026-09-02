# Zernio::CreateValueRuleSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **ad_account_id** | **String** | Platform ad account id (Meta act_&lt;n&gt;, Google customer id, LinkedIn account id, ...). |  |
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

