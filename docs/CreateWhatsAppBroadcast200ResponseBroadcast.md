# Late::CreateWhatsAppBroadcast200ResponseBroadcast

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **template** | **Object** |  | [optional] |
| **status** | **String** | Always \&quot;draft\&quot; for new broadcasts | [optional] |
| **recipient_count** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppBroadcast200ResponseBroadcast.new(
  id: null,
  name: null,
  description: null,
  template: null,
  status: null,
  recipient_count: null,
  created_at: null
)
```

