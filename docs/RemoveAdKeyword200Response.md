# Zernio::RemoveAdKeyword200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **removed** | **Boolean** | Always true on success | [optional] |
| **keyword_id** | **String** | Zernio keyword ID | [optional] |
| **platform_criterion_id** | **String** | Google ad_group_criterion.criterion_id | [optional] |
| **resource_name** | **String** | Google resource name of the removed criterion | [optional] |
| **campaign_id** | **String** | Google campaign ID | [optional] |
| **ad_set_id** | **String** | Google ad group ID | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveAdKeyword200Response.new(
  removed: null,
  keyword_id: null,
  platform_criterion_id: null,
  resource_name: null,
  campaign_id: null,
  ad_set_id: null
)
```

