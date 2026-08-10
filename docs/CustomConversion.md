# Zernio::CustomConversion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **rule** | **Object** | Meta&#39;s rule, parsed back from the string Meta stores. | [optional] |
| **custom_event_type** | **String** |  | [optional] |
| **pixel_id** | **String** | Meta&#39;s event_source_id — the pixel the rule reads from. | [optional] |
| **is_archived** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CustomConversion.new(
  id: null,
  name: null,
  rule: null,
  custom_event_type: null,
  pixel_id: null,
  is_archived: null
)
```

