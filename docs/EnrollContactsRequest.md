# Zernio::EnrollContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** |  |  |
| **channel_ids** | **Array&lt;String&gt;** | Optional. Auto-detected if not provided. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnrollContactsRequest.new(
  contact_ids: null,
  channel_ids: null
)
```

