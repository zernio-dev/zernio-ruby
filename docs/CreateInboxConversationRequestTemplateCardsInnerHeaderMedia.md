# Zernio::CreateInboxConversationRequestTemplateCardsInnerHeaderMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Must match the card header&#39;s media type. |  |
| **link** | **String** | Public URL of the asset to send. Must be reachable without auth. | [optional] |
| **id** | **String** | A Meta media id (from the media upload endpoint), as an alternative to link. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequestTemplateCardsInnerHeaderMedia.new(
  type: null,
  link: null,
  id: null
)
```

