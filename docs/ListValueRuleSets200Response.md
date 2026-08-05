# Zernio::ListValueRuleSets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **data** | [**Array&lt;ValueRuleSet&gt;**](ValueRuleSet.md) |  | [optional] |
| **paging** | [**ListValueRuleSets200ResponsePaging**](ListValueRuleSets200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListValueRuleSets200Response.new(
  ad_account_id: null,
  data: null,
  paging: null
)
```

