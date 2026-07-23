# Zernio::RespondToPhoneNumberReviewerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Your message to the reviewer. | [optional] |
| **documents** | [**Array&lt;RespondToPhoneNumberReviewerRequestDocumentsInner&gt;**](RespondToPhoneNumberReviewerRequestDocumentsInner.md) | Corrected requirement documents, each keyed to its requirement. | [optional] |
| **address** | **Object** | A corrected address record, keyed to its requirement. | [optional] |
| **entity_type** | **String** |  | [optional] |
| **attachments** | [**Array&lt;ReplyToPhoneNumberReviewerRequestAttachmentsInner&gt;**](ReplyToPhoneNumberReviewerRequestAttachmentsInner.md) | Loose files (PDF/JPG/PNG/WEBP, max 10 MB each) whose links are added to your message. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RespondToPhoneNumberReviewerRequest.new(
  message: null,
  documents: null,
  address: null,
  entity_type: null,
  attachments: null
)
```

