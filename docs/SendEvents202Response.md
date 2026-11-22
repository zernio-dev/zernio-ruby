# Zernio::SendEvents202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_received** | **Integer** |  | [optional] |
| **stored** | **Boolean** |  | [optional] |
| **queued_destinations** | **Integer** | Destinations whose sends were queued. | [optional] |
| **destinations** | **Array&lt;Object&gt;** |  | [optional] |
| **test_code** | **String** | Always &#x60;null&#x60;: requests with a test code send now and answer 200. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents202Response.new(
  events_received: null,
  stored: null,
  queued_destinations: null,
  destinations: null,
  test_code: null
)
```

