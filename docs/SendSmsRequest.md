# Zernio::SendSmsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | One of your SMS-enabled numbers (E.164; formatting is normalized), or an approved alphanumeric sender ID (3-11 letters/digits/spaces, created via &#x60;/v1/sms/sender-ids&#x60;). |  |
| **to** | **String** | Recipient number (E.164). |  |
| **text** | **String** | Message body. Required unless &#x60;mediaUrls&#x60; is set. Max 10 SMS segments (1530 GSM-7 or 670 unicode characters). | [optional] |
| **media_urls** | **Array&lt;String&gt;** | Public media URLs to attach (sends as MMS). Max 10. | [optional] |
| **send_at** | **Time** | Optional. Schedule the send for a future time (ISO 8601 with offset, e.g. &#x60;2026-08-01T12:00:00Z&#x60;). Must be in the future. The message is queued and the &#x60;message.delivered&#x60; webhook fires when it actually sends. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendSmsRequest.new(
  from: null,
  to: null,
  text: null,
  media_urls: null,
  send_at: null
)
```

