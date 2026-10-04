# Zernio::GetFacebookDemographics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **snapshot_date** | **Date** | Date of Meta&#39;s snapshot (YYYY-MM-DD), or null when Meta has no snapshot yet. | [optional] |
| **demographics** | [**GetFacebookDemographics200ResponseDemographics**](GetFacebookDemographics200ResponseDemographics.md) |  | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetFacebookDemographics200Response.new(
  success: null,
  account_id: null,
  platform: null,
  metric: null,
  snapshot_date: null,
  demographics: null,
  note: null
)
```

