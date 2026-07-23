# Zernio::RespondToPhoneNumberReviewerRequestDocumentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  |  |
| **filename** | **String** |  | [optional] |
| **base64** | **String** | Base64-encoded file bytes (or supply documentId instead). | [optional] |
| **document_id** | **String** | Id of a document already uploaded out-of-band. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RespondToPhoneNumberReviewerRequestDocumentsInner.new(
  requirement_id: null,
  filename: null,
  base64: null,
  document_id: null
)
```

