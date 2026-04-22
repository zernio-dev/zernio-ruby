# Zernio::BulkCreateContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **contacts** | [**Array&lt;BulkCreateContactsRequestContactsInner&gt;**](BulkCreateContactsRequestContactsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkCreateContactsRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  contacts: null
)
```

