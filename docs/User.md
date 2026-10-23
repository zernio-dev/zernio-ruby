# Zernio::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups turned off for this team member. Empty for owners and unrestricted members. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::User.new(
  _id: null,
  email: null,
  name: null,
  role: null,
  disabled_resource_groups: null,
  created_at: null
)
```

