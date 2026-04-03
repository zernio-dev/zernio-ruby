# Late::UpdateWhatsAppFlowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | New flow name | [optional] |
| **categories** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateWhatsAppFlowRequest.new(
  account_id: null,
  name: null,
  categories: null
)
```

