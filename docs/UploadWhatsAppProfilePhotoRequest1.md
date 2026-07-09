# Zernio::UploadWhatsAppProfilePhotoRequest1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **url** | **String** | Publicly reachable https URL of the image (JPEG or PNG, max 5MB, recommended 640x640). Fetched server-side; must resolve directly without redirects. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadWhatsAppProfilePhotoRequest1.new(
  account_id: null,
  url: null
)
```

