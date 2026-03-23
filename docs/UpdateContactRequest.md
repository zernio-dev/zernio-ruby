# Late::UpdateContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **avatar_url** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **is_subscribed** | **Boolean** |  | [optional] |
| **is_blocked** | **Boolean** |  | [optional] |
| **notes** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateContactRequest.new(
  name: null,
  email: null,
  company: null,
  avatar_url: null,
  tags: null,
  is_subscribed: null,
  is_blocked: null,
  notes: null
)
```

