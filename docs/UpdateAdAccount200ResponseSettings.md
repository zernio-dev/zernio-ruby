# Zernio::UpdateAdAccount200ResponseSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **amount_spent** | **Float** |  | [optional] |
| **spend_cap** | **Float** |  | [optional] |
| **funding_source** | [**UpdateAdAccount200ResponseSettingsFundingSource**](UpdateAdAccount200ResponseSettingsFundingSource.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAccount200ResponseSettings.new(
  name: null,
  currency: null,
  balance: null,
  amount_spent: null,
  spend_cap: null,
  funding_source: null
)
```

