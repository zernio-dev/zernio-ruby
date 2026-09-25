# Zernio::RespondToSmsRegistrationReview200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | requested &#x3D; back in our review; rejected &#x3D; a registration the carriers rejected, where we asked for these answers to fix it (it stays rejected while we do). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RespondToSmsRegistrationReview200Response.new(
  status: null
)
```

