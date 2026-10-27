# Zernio::FilePickerSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Public session id, echoed as &#x60;pickerSessionId&#x60; on the redirect and as &#x60;picker.sessionId&#x60; on the webhook. |  |
| **url** | **String** | The hosted picker page. Open it in the end user&#39;s browser (redirect or new tab, not an iframe). It is a credential: single-use and valid until &#x60;expiresAt&#x60;. |  |
| **expires_at** | **Time** | 30 minutes after creation. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FilePickerSession.new(
  id: ps_3f2a9c0d1e7b4a6c8d9e0f1a,
  url: null,
  expires_at: null
)
```

