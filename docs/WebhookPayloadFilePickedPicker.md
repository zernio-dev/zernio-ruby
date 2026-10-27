# Zernio::WebhookPayloadFilePickedPicker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The &#x60;id&#x60; returned when the session was created. | [optional] |
| **files** | [**Array&lt;WebhookPayloadFilePickedPickerFilesInner&gt;**](WebhookPayloadFilePickedPickerFilesInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadFilePickedPicker.new(
  session_id: null,
  files: null
)
```

