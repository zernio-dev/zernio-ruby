# Zernio::GetWhatsAppCallRecording200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional] |
| **content_not_retained** | **Boolean** | True when this team does not retain content: no recording is stored, and &#x60;url&#x60; is null. Use the &#x60;call.recording_ready&#x60; webhook. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCallRecording200Response.new(
  url: null,
  content_not_retained: null
)
```

