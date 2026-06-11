# Zernio::BlockWhatsAppUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocked** | [**Array&lt;BlockWhatsAppUsers200ResponseBlockedInner&gt;**](BlockWhatsAppUsers200ResponseBlockedInner.md) | Users successfully blocked. | [optional] |
| **failed** | [**Array&lt;BlockWhatsAppUsers200ResponseFailedInner&gt;**](BlockWhatsAppUsers200ResponseFailedInner.md) | Users that could not be blocked, with reasons. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BlockWhatsAppUsers200Response.new(
  blocked: null,
  failed: null
)
```

