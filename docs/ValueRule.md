# Zernio::ValueRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform rule id. Echo it on &#x60;PUT&#x60; to KEEP this rule, omit it to CREATE a new one. A rule left out of the array entirely is DELETED.  | [optional] |
| **name** | **String** |  |  |
| **adjust_sign** | **String** | Direction of the adjustment. There is no signed value field. |  |
| **adjust_value** | **Integer** | Unsigned percentage magnitude. &#x60;INCREASE&#x60; accepts 1-1000, &#x60;DECREASE&#x60; accepts 1-90. 0 is out of range on both.  |  |
| **status** | **String** | Meta returns &#x60;ACTIVE&#x60; here but documents no enum for the field. Treat it as a passthrough: echo whatever the &#x60;GET&#x60; returned, and do not synthesize values.  | [optional] |
| **criteria** | [**Array&lt;ValueRuleCriterion&gt;**](ValueRuleCriterion.md) | All criteria on a rule must match for the rule to fire. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValueRule.new(
  id: null,
  name: null,
  adjust_sign: null,
  adjust_value: null,
  status: null,
  criteria: null
)
```

