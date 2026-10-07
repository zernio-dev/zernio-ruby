# Zernio::UpdateAdAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **url_tracking** | [**UpdateAdAccount200ResponseUrlTracking**](UpdateAdAccount200ResponseUrlTracking.md) |  | [optional] |
| **dsa_defaults** | [**UpdateAdAccount200ResponseDsaDefaults**](UpdateAdAccount200ResponseDsaDefaults.md) |  | [optional] |
| **settings** | [**UpdateAdAccount200ResponseSettings**](UpdateAdAccount200ResponseSettings.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAccount200Response.new(
  ad_account_id: null,
  url_tracking: null,
  dsa_defaults: null,
  settings: null
)
```

