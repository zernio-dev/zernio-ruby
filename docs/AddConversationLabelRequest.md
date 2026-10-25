# Zernio::AddConversationLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook social account ID |  |
| **label_id** | **String** | Meta label id from listInboxLabels |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddConversationLabelRequest.new(
  account_id: null,
  label_id: null
)
```

