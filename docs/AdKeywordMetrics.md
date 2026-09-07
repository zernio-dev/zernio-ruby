# Zernio::AdKeywordMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **window_days** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **cost** | **Float** | Account currency, not USD-normalized | [optional] |
| **conversions** | **Float** |  | [optional] |
| **first_page_cpc** | **Float** | Account currency | [optional] |
| **first_position_cpc** | **Float** | Account currency | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdKeywordMetrics.new(
  window_days: null,
  clicks: null,
  impressions: null,
  cost: null,
  conversions: null,
  first_page_cpc: null,
  first_position_cpc: null
)
```

