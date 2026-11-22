# Zernio::ListCampaignResults200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  |  |
| **model** | **String** | The attribution model the results are counted under. |  |
| **campaigns** | [**Array&lt;ListCampaignResults200ResponseCampaignsInner&gt;**](ListCampaignResults200ResponseCampaignsInner.md) |  |  |
| **next_cursor** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignResults200Response.new(
  from_date: null,
  to_date: null,
  model: null,
  campaigns: null,
  next_cursor: null
)
```

