# Zernio::UpdateAd200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_only** | **Boolean** | Present and true when the request was sent with validateOnly: nothing was changed. The other fields of a real update are then absent. | [optional] |
| **results** | [**Array&lt;AdWriteValidationResult&gt;**](AdWriteValidationResult.md) | validateOnly only: one entry, the object Meta validated. | [optional] |
| **ad** | [**Ad**](Ad.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAd200Response.new(
  validate_only: null,
  results: null,
  ad: null,
  message: null
)
```

