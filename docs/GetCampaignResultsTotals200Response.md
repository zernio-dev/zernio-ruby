# Zernio::GetCampaignResultsTotals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  |  |
| **totals** | **Hash&lt;String, Float&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignResultsTotals200Response.new(
  from_date: null,
  to_date: null,
  totals: {&quot;qualified_leads&quot;:140,&quot;sales&quot;:23,&quot;revenue&quot;:41200}
)
```

