# Zernio::CreateAccountGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **profile_id** | **String** | ID of the profile this group belongs to. All accountIds must belong to this profile. |  |
| **account_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAccountGroupRequest.new(
  name: null,
  profile_id: null,
  account_ids: null
)
```

