# Zernio::WebhookEmailTrackedMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  | [optional] |
| **thread_id** | **String** |  | [optional] |
| **tracking_id** | **String** | Also returned as &#x60;data.trackingId&#x60; by the send. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookEmailTrackedMessage.new(
  message_id: null,
  thread_id: null,
  tracking_id: null,
  metadata: null
)
```

