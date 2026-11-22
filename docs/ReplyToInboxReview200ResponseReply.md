# Zernio::ReplyToInboxReview200ResponseReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **text** | **String** | &#x60;null&#x60; under [zero content retention](/security/zero-content-retention). | [optional] |
| **content_not_retained** | **Boolean** | Present and &#x60;true&#x60; when the reply text is not returned under zero content retention. | [optional] |
| **created** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyToInboxReview200ResponseReply.new(
  id: null,
  text: null,
  content_not_retained: null,
  created: null
)
```

