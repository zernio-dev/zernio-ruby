# Zernio::DeleteSipTrunk200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted** | **Boolean** |  | [optional] |
| **detached_numbers** | **Array&lt;String&gt;** | Numbers (E.164) that were attached to the trunk and are now detached. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeleteSipTrunk200Response.new(
  deleted: null,
  detached_numbers: null
)
```

