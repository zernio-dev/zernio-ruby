# Zernio::AddBroadcastRecipientsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** | Specific contact IDs to add | [optional] |
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

