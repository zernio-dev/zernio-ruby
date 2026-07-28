# Zernio::RespondToSmsRegistrationReviewRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note** | **String** | Answer for the reviewer. Required when no files are sent. | [optional] |
| **files** | **Array&lt;String&gt;** | Hosted document URLs returned by POST /v1/sms/opt-in-proof. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RespondToSmsRegistrationReviewRequest.new(
  note: null,
  files: null
)
```

