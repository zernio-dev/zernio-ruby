# Zernio::SetMessengerGreetingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **greeting** | [**Array&lt;MessengerGreeting&gt;**](MessengerGreeting.md) | One entry per locale; one must use locale &#x60;default&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetMessengerGreetingRequest.new(
  greeting: null
)
```

