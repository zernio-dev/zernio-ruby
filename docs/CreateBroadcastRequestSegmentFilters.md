# Zernio::CreateBroadcastRequestSegmentFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **is_subscribed** | **Boolean** |  | [optional] |
| **custom_fields** | **Hash&lt;String, Object&gt;** | Custom field values a contact must hold, keyed by field slug. Exact match per key (type included: 5 does not match \&quot;5\&quot;); every key must match. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBroadcastRequestSegmentFilters.new(
  tags: null,
  is_subscribed: null,
  custom_fields: null
)
```

