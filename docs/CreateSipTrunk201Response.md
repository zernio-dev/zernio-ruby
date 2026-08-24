# Zernio::CreateSipTrunk201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **sip_host** | **String** |  | [optional] |
| **sip_port** | **Integer** |  | [optional] |
| **transport** | **String** |  | [optional] |
| **termination** | [**CreateSipTrunk201ResponseTermination**](CreateSipTrunk201ResponseTermination.md) |  | [optional] |
| **numbers_attached** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **digest_password** | **String** | SIP digest password, shown only in this response. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSipTrunk201Response.new(
  id: null,
  label: null,
  sip_host: null,
  sip_port: null,
  transport: null,
  termination: null,
  numbers_attached: null,
  created_at: null,
  digest_password: null
)
```

