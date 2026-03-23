# Late::CreateCustomFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** | Auto-generated from name if not provided | [optional] |
| **type** | **String** |  |  |
| **options** | **Array&lt;String&gt;** | Required for select type | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateCustomFieldRequest.new(
  profile_id: null,
  name: null,
  slug: null,
  type: null,
  options: null
)
```

