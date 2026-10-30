# Zernio::ListCampaignResults200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  |  |
| **campaigns** | [**Array&lt;ListCampaignResults200ResponseCampaignsInner&gt;**](ListCampaignResults200ResponseCampaignsInner.md) |  |  |
| **next_cursor** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignResults200Response.new(
  from_date: null,
  to_date: null,
  campaigns: null,
  next_cursor: null
)
```

