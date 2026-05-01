# Zernio::ListAccountGroups200ResponseGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **account_ids** | **Array&lt;String&gt;** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **profile_id** | **String** | Legacy field. Present only on groups created before cross-profile groups were supported. New groups omit it.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAccountGroups200ResponseGroupsInner.new(
  _id: null,
  name: null,
  account_ids: null,
  created_by: null,
  profile_id: null
)
```

