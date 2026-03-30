# Late::WhatsAppHeaderComponentExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **header_text** | **Array&lt;String&gt;** | Sample values for header text variables | [optional] |
| **header_handle** | **Array&lt;String&gt;** | When the header format is a media type (image, video, gif, document), provide a public URL here. Zernio will download and upload it to WhatsApp on your behalf, replacing it with the internal file handle before creating the template. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::WhatsAppHeaderComponentExample.new(
  header_text: null,
  header_handle: null
)
```

