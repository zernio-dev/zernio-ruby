# Zernio::UnblockWhatsAppUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unblocked** | [**Array&lt;BlockWhatsAppUsers200ResponseBlockedInner&gt;**](BlockWhatsAppUsers200ResponseBlockedInner.md) | Users successfully unblocked. | [optional] |
| **failed** | [**Array&lt;BlockWhatsAppUsers200ResponseFailedInner&gt;**](BlockWhatsAppUsers200ResponseFailedInner.md) | Users that could not be unblocked, with reasons. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UnblockWhatsAppUsers200Response.new(
  unblocked: null,
  failed: null
)
```

