# Zernio::CPM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **rate_per1k_cents** | **Integer** |  |  |
| **min_views_to_earn** | **Integer** |  |  |
| **max_payout_per_clip_cents** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CPM.new(
  type: null,
  rate_per1k_cents: null,
  min_views_to_earn: null,
  max_payout_per_clip_cents: null
)
```

