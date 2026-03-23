# Late::AddBroadcastRecipientsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** | Specific contact IDs to add | [optional] |
| **use_segment** | **Boolean** | Auto-populate from broadcast segment filters | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AddBroadcastRecipientsRequest.new(
  contact_ids: null,
  use_segment: null
)
```

