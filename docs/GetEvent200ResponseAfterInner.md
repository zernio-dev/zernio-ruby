# Zernio::GetEvent200ResponseAfterInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **source** | **String** | Where it came from: &#x60;stripe&#x60;, &#x60;shopify&#x60;, &#x60;api&#x60;, &#x60;web&#x60;... | [optional] |
| **event_time** | **Time** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEvent200ResponseAfterInner.new(
  event_id: null,
  event_name: null,
  source: null,
  event_time: null,
  value: null,
  currency: null
)
```

