# Zernio::CreateAccountGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **account_ids** | **Array&lt;String&gt;** |  |  |
| **profile_id** | **String** | Deprecated. Accepted for backward compatibility but ignored. Groups are no longer scoped to a single profile.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAccountGroupRequest.new(
  name: null,
  account_ids: null,
  profile_id: null
)
```

