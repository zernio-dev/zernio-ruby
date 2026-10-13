# Zernio::AskSupportQuestionRequestContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **request_id** | **String** | The X-Request-Id of a call you want explained. The assistant reads that request&#39;s logged record. Not checked up front. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AskSupportQuestionRequestContext.new(
  post_id: null,
  account_id: null,
  profile_id: null,
  request_id: null
)
```

