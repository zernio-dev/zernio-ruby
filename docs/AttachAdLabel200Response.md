# Zernio::AttachAdLabel200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **label_id** | **String** |  | [optional] |
| **attached** | **Integer** | Links created by this call | [optional] |
| **unchanged** | **Integer** | Targets that already carried the label | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachAdLabel200Response.new(
  customer_id: null,
  label_id: null,
  attached: null,
  unchanged: null
)
```

