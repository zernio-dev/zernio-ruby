# Zernio::ReplyToPhoneNumberReviewerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The reply message to the reviewer. | [optional] |
| **attachments** | [**Array&lt;ReplyToPhoneNumberReviewerRequestAttachmentsInner&gt;**](ReplyToPhoneNumberReviewerRequestAttachmentsInner.md) | Files (PDF/JPG/PNG/WEBP, max 10 MB each) whose links are added to the reply. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyToPhoneNumberReviewerRequest.new(
  text: null,
  attachments: null
)
```

