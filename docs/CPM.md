# Zernio::CPM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **metric** | **String** | What the rate pays on. Missing means views. | [optional] |
| **engagement_types** | **Array&lt;String&gt;** | The engagements that count. Missing means all four. | [optional] |
| **organic_views_only** | **Boolean** | Only organic views count; views from ads do not. | [optional] |
| **rate_per1k_cents** | **Integer** |  |  |
| **min_views_to_earn** | **Integer** |  |  |
| **max_payout_per_clip_cents** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CPM.new(
  type: null,
  metric: null,
  engagement_types: null,
  organic_views_only: null,
  rate_per1k_cents: null,
  min_views_to_earn: null,
  max_payout_per_clip_cents: null
)
```

