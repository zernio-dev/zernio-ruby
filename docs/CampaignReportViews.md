# Zernio::CampaignReportViews

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eligible** | **Integer** | Views that count toward earnings. |  |
| **total** | **Integer** | Latest view counts. |  |
| **paid** | **Integer** | Views from ads, on YouTube and X posts. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignReportViews.new(
  eligible: null,
  total: null,
  paid: null
)
```

