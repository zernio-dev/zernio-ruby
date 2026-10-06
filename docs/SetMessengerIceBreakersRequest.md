# Zernio::SetMessengerIceBreakersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ice_breakers** | [**Array&lt;MessengerIceBreakerLocale&gt;**](MessengerIceBreakerLocale.md) | One entry per locale; one must use locale &#x60;default&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetMessengerIceBreakersRequest.new(
  ice_breakers: null
)
```

