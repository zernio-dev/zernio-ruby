# Zernio::AddBroadcastRecipientsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** | Specific contact IDs to add. Zernio contact ids (24-character hex), as returned by the list-contacts endpoint. A platform identifier such as a WhatsApp wa_id is rejected with 400; use phones for raw numbers. | [optional] |
| **phones** | **Array&lt;String&gt;** | Raw phone numbers (auto-creates contacts). Useful for WhatsApp/Telegram manual entry | [optional] |
| **use_segment** | **Boolean** | Auto-populate from broadcast segment filters | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddBroadcastRecipientsRequest.new(
  contact_ids: null,
  phones: null,
  use_segment: null
)
```

