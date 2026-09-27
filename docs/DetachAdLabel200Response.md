# Zernio::DetachAdLabel200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **label_id** | **String** |  | [optional] |
| **detached** | **Integer** | Links removed by this call | [optional] |
| **unchanged** | **Integer** | Targets that did not carry the label | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DetachAdLabel200Response.new(
  customer_id: null,
  label_id: null,
  detached: null,
  unchanged: null
)
```

