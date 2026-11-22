# Zernio::Retainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **mode** | **String** |  |  |
| **amount_cents** | **Integer** |  |  |
| **period** | **String** |  |  |
| **required_approved_posts** | **Integer** |  |  |
| **commission** | [**CreatorCampaignCommissionTerms**](CreatorCampaignCommissionTerms.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Retainer.new(
  type: null,
  mode: null,
  amount_cents: null,
  period: null,
  required_approved_posts: null,
  commission: null
)
```

