# Zernio::ListSipTrunks200ResponseTrunksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **sip_host** | **String** |  | [optional] |
| **sip_port** | **Integer** |  | [optional] |
| **transport** | **String** |  | [optional] |
| **termination** | [**ListSipTrunks200ResponseTrunksInnerTermination**](ListSipTrunks200ResponseTrunksInnerTermination.md) |  | [optional] |
| **numbers_attached** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSipTrunks200ResponseTrunksInner.new(
  id: null,
  label: null,
  sip_host: null,
  sip_port: null,
  transport: null,
  termination: null,
  numbers_attached: null,
  created_at: null
)
```

