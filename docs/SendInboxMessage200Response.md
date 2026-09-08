# Zernio::SendInboxMessage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **warnings** | [**Array&lt;SendInboxMessage200ResponseWarningsInner&gt;**](SendInboxMessage200ResponseWarningsInner.md) | Present when a successful send ignored replyTo on Instagram or Facebook Messenger. The message was sent without a quote; do not retry it to apply the reply. | [optional] |
| **data** | [**SendInboxMessage200ResponseData**](SendInboxMessage200ResponseData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage200Response.new(
  success: null,
  warnings: null,
  data: null
)
```

