# Zernio::SendEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_received** | **Integer** | Events in the request. | [optional] |
| **stored** | **Boolean** | Whether the events were stored for reporting (always false with testCode). | [optional] |
| **test_code** | **String** | The test code forwarded to every destination, or &#x60;null&#x60; when the request carried none. | [optional] |
| **warnings** | [**Array&lt;SendEvents200ResponseWarningsInner&gt;**](SendEvents200ResponseWarningsInner.md) | Left out when there is nothing to warn about. &#x60;no_destination&#x60;: no forwarding rule took the events, so they were stored but sent to no platform. | [optional] |
| **destinations** | [**Array&lt;SendEvents200ResponseDestinationsInner&gt;**](SendEvents200ResponseDestinationsInner.md) |  | [optional] |
| **queued_destinations** | **Integer** | Destinations whose sends were queued (all of them with &#x60;mode: async&#x60;, retries with &#x60;sync&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200Response.new(
  events_received: null,
  stored: null,
  test_code: null,
  warnings: null,
  destinations: null,
  queued_destinations: null
)
```

