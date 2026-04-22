# Zernio::SendBroadcast200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **status** | **String** | Current broadcast status after processing first batch | [optional] |
| **sent** | **Integer** | Recipients sent in this batch | [optional] |
| **failed** | **Integer** | Recipients failed in this batch | [optional] |
| **recipient_count** | **Integer** | Total recipient count | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendBroadcast200Response.new(
  success: null,
  status: null,
  sent: null,
  failed: null,
  recipient_count: null
)
```

