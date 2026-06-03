# Zernio::GetConversionsQuality200ResponseRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** |  | [optional] |
| **composite_score** | **Float** | Composite EMQ score, 0-10. | [optional] |
| **match_keys** | [**Array&lt;GetConversionsQuality200ResponseRowsInnerMatchKeysInner&gt;**](GetConversionsQuality200ResponseRowsInnerMatchKeysInner.md) |  | [optional] |
| **event_coverage_percentage** | **Float** | Pixel↔CAPI coverage rate for this event. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetConversionsQuality200ResponseRowsInner.new(
  event_name: null,
  composite_score: null,
  match_keys: null,
  event_coverage_percentage: null
)
```

