# Zernio::WebhookPayloadSupportRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event id, the dedupe key. |  |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **run** | [**SupportRun**](SupportRun.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadSupportRun.new(
  id: null,
  event: null,
  timestamp: null,
  run: null
)
```

