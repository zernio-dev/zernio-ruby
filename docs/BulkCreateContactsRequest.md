# Late::BulkCreateContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **contacts** | [**Array&lt;BulkCreateContactsRequestContactsInner&gt;**](BulkCreateContactsRequestContactsInner.md) |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::BulkCreateContactsRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  contacts: null
)
```

