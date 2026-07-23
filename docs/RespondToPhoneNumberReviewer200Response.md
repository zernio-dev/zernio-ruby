# Zernio::RespondToPhoneNumberReviewer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | &#x60;resubmitted&#x60; when corrections were submitted, &#x60;replied&#x60; when it was message-only. | [optional] |
| **posted** | **Boolean** | Whether a message/attachments were posted to the reviewer. | [optional] |
| **phone_number** | [**RemediatePhoneNumber200ResponsePhoneNumber**](RemediatePhoneNumber200ResponsePhoneNumber.md) |  | [optional] |
| **siblings_resubmitted** | **Integer** | Other numbers on the same registration the correction fanned out to. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RespondToPhoneNumberReviewer200Response.new(
  status: null,
  posted: null,
  phone_number: null,
  siblings_resubmitted: null
)
```

