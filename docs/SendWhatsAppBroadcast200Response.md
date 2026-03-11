# Late::SendWhatsAppBroadcast200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **status** | **String** | Final broadcast status | [optional] |
| **sent** | **Integer** | Number of messages sent successfully | [optional] |
| **failed** | **Integer** | Number of messages that failed | [optional] |
| **total** | **Integer** | Total recipient count | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SendWhatsAppBroadcast200Response.new(
  success: null,
  status: null,
  sent: null,
  failed: null,
  total: null
)
```

