# Zernio::SmsRegistrationReviewRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Changes with every request. Send it back as &#x60;requestId&#x60; when answering, so a reply to a replaced request is refused (409) instead of filed under the new points. | [optional] |
| **intro** | **String** | Context from the reviewer, e.g. what was already fixed on our side. | [optional] |
| **points** | [**Array&lt;SmsRegistrationReviewRequestPointsInner&gt;**](SmsRegistrationReviewRequestPointsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SmsRegistrationReviewRequest.new(
  id: null,
  intro: null,
  points: null
)
```

