# Zernio::GetInboxConversationMessages200ResponseMessagesInnerAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **url** | **String** | Direct media link. On Instagram and Facebook this is a signed Meta CDN url that EXPIRES: use it now, do not store it. Persist &#x60;refreshUrl&#x60; instead. | [optional] |
| **refresh_url** | **String** | Instagram and Facebook only. Endpoint that resolves this attachment to a working url every time, re-minting it from Meta when the stored one has expired. Safe to store and render indefinitely. | [optional] |
| **filename** | **String** |  | [optional] |
| **preview_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponseMessagesInnerAttachmentsInner.new(
  id: null,
  type: null,
  url: null,
  refresh_url: null,
  filename: null,
  preview_url: null
)
```

