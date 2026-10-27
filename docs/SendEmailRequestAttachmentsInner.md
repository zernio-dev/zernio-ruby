# Zernio::SendEmailRequestAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** |  |  |
| **content_type** | **String** |  |  |
| **url** | **String** | Fetched at send time. Exactly one of &#x60;url&#x60; or &#x60;base64&#x60;. | [optional] |
| **base64** | **String** |  | [optional] |
| **content_id** | **String** | Makes the attachment inline (&#x60;cid:&#x60; reference in the html). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEmailRequestAttachmentsInner.new(
  filename: null,
  content_type: null,
  url: null,
  base64: null,
  content_id: null
)
```

