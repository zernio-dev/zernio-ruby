# Zernio::SendSmsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | One of your SMS-enabled numbers (E.164). |  |
| **to** | **String** | Recipient number (E.164). |  |
| **text** | **String** |  | [optional] |
| **media_urls** | **Array&lt;String&gt;** | Publicly reachable media URLs for MMS (max 10, total &lt; 1MB). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendSmsRequest.new(
  from: +14155550192,
  to: +14155550123,
  text: Your verification code is 123456.,
  media_urls: null
)
```

