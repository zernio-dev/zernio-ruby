# Zernio::RotateSipTrunkCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **termination** | [**CreateSipTrunk201ResponseTermination**](CreateSipTrunk201ResponseTermination.md) |  | [optional] |
| **digest_password** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RotateSipTrunkCredentials200Response.new(
  termination: null,
  digest_password: null
)
```

