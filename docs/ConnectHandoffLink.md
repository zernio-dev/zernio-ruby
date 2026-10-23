# Zernio::ConnectHandoffLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pass to &#x60;GET /v1/connect/handoffs/{handoffId}&#x60;. | [optional] |
| **url** | **String** | Short link to encode in the QR code. It opens the welcome screen on the phone. | [optional] |
| **expires_at** | **Time** | When &#x60;url&#x60; stops working (30 minutes). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectHandoffLink.new(
  id: null,
  url: null,
  expires_at: null
)
```

