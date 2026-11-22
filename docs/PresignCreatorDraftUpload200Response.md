# Zernio::PresignCreatorDraftUpload200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_url** | **String** | Presigned URL to &#x60;PUT&#x60; the file to. |  |
| **public_url** | **String** | Where the file is served once uploaded. Pass it as &#x60;mediaUrl&#x60;. |  |
| **key** | **String** |  |  |
| **expires_in** | **Integer** | Seconds until &#x60;uploadUrl&#x60; expires. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PresignCreatorDraftUpload200Response.new(
  upload_url: null,
  public_url: null,
  key: null,
  expires_in: null
)
```

