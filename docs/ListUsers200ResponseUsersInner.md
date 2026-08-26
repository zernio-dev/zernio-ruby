# Zernio::ListUsers200ResponseUsersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **is_root** | **Boolean** |  | [optional] |
| **profile_access** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_login_at** | **Time** | Last sign-in, stamped at most once an hour, so it is accurate to within an hour rather than to the exact session. Omitted for members with no recorded sign-in since the field shipped, which does not mean they never signed in. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListUsers200ResponseUsersInner.new(
  _id: null,
  name: null,
  email: null,
  role: null,
  is_root: null,
  profile_access: null,
  created_at: null,
  last_login_at: null
)
```

