# Zernio::UpdateLeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **value** | **Float** | Deal value; requires currency. | [optional] |
| **currency** | **String** | ISO 4217 code. | [optional] |
| **account_id** | **String** | Required when &#x60;{id}&#x60; is a Meta leadgenId: the facebook or metaads account that received the lead. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateLeadRequest.new(
  status: null,
  value: null,
  currency: EUR,
  account_id: null
)
```

