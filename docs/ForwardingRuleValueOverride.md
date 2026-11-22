# Zernio::ForwardingRuleValueOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** |  |  |
| **amount** | **Float** | Required for &#x60;fixed&#x60; and &#x60;percent&#x60; (at most 1000 for &#x60;percent&#x60;); null for &#x60;original&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ForwardingRuleValueOverride.new(
  mode: null,
  amount: null
)
```

