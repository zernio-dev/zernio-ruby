# Zernio::CreateInboxConversationRequestHeaderMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Must match the template header&#39;s media type. |  |
| **link** | **String** | Public URL of the asset to send. Must be reachable without auth. | [optional] |
| **id** | **String** | A Meta media id (from the media upload endpoint), as an alternative to link. | [optional] |
| **filename** | **String** | Document display name shown to the recipient (e.g. \&quot;Factura 0001-123.pdf\&quot;). document type only; ignored for image/video. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequestHeaderMedia.new(
  type: null,
  link: null,
  id: null,
  filename: null
)
```

