# Zernio::SendEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_received** | **Integer** | Events in the request. | [optional] |
| **stored** | **Boolean** | Whether the events were stored for reporting (always false with testCode). | [optional] |
| **destinations** | [**Array&lt;SendEvents200ResponseDestinationsInner&gt;**](SendEvents200ResponseDestinationsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200Response.new(
  events_received: null,
  stored: null,
  destinations: null
)
```

