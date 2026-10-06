# Zernio::WebhookPayloadContactFieldChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event id, the dedupe key. |  |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **contact** | [**WebhookPayloadContactTagContact**](WebhookPayloadContactTagContact.md) |  |  |
| **field** | **String** | Custom field slug. |  |
| **previous_value** | **Object** |  |  |
| **value** | **Object** |  |  |
| **source** | **String** | Who wrote the field: the API or dashboard, a workflow set_field node, or an automation. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadContactFieldChanged.new(
  id: null,
  event: null,
  timestamp: null,
  contact: null,
  field: null,
  previous_value: null,
  value: null,
  source: null
)
```

