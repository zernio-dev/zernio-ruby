# Zernio::SendInboxMessageRequestInteractiveHeader

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **text** | **String** | Required when header type is text. | [optional] |
| **image** | [**SendInboxMessageRequestInteractiveHeaderImage**](SendInboxMessageRequestInteractiveHeaderImage.md) |  | [optional] |
| **video** | [**SendInboxMessageRequestInteractiveHeaderImage**](SendInboxMessageRequestInteractiveHeaderImage.md) |  | [optional] |
| **document** | [**SendInboxMessageRequestInteractiveHeaderImage**](SendInboxMessageRequestInteractiveHeaderImage.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractiveHeader.new(
  type: null,
  text: null,
  image: null,
  video: null,
  document: null
)
```

