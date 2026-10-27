# Zernio::SendEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_received** | **Integer** | Events in the request. | [optional] |
| **stored** | **Boolean** | Whether the events were stored for reporting (always false with testCode). | [optional] |
| **test_code** | **String** | The test code forwarded to every destination, or &#x60;null&#x60; when the request carried none. | [optional] |
| **destinations** | [**Array&lt;SendEvents200ResponseDestinationsInner&gt;**](SendEvents200ResponseDestinationsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200Response.new(
  events_received: null,
  stored: null,
  test_code: null,
  destinations: null
)
```

