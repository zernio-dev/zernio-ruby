# Zernio::GetLinkedInDemographics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **demographics** | **Hash&lt;String, Array&lt;GetLinkedInDemographics200ResponseDemographicsValueInner&gt;&gt;** | Only the requested breakdowns are present. Entries are sorted by value, largest first. | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLinkedInDemographics200Response.new(
  success: null,
  account_id: null,
  platform: null,
  metric: null,
  demographics: null,
  note: null
)
```

