# Zernio::CreateImessageGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The iMessage account (sender) that opens the group |  |
| **contacts** | **Array&lt;String&gt;** | Participant handles (E.164 phones or iMessage emails) |  |
| **text** | **String** | The first message |  |
| **name** | **String** | Group name (required for WhatsApp groups) | [optional] |
| **channel** | **String** |  | [optional][default to &#39;imessage&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateImessageGroupRequest.new(
  account_id: null,
  contacts: null,
  text: null,
  name: null,
  channel: null
)
```

