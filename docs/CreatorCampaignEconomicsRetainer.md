# Zernio::CreatorCampaignEconomicsRetainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **mode** | **String** | &#x60;standard&#x60; pays &#x60;amountCents&#x60; per period. &#x60;smart&#x60; guarantees it: the commission the creator earned in the period is topped up to &#x60;amountCents&#x60;. Smart needs &#x60;commission&#x60; and a linked store. | [optional][default to &#39;standard&#39;] |
| **amount_cents** | **Integer** |  |  |
| **period** | **String** | Weeks start Monday 00:00 UTC, months on the 1st. A period is paid within a day after it ends. A standard &#x60;once&#x60; retainer pays as soon as the posts are approved; a smart one when the campaign ends. |  |
| **required_approved_posts** | **Integer** | Posts approved within the period that it needs. 0 pays without posts. |  |
| **commission** | [**CreatorCampaignCommissionTerms**](CreatorCampaignCommissionTerms.md) |  | [optional] |
| **budget_cents** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignEconomicsRetainer.new(
  type: null,
  mode: null,
  amount_cents: null,
  period: null,
  required_approved_posts: null,
  commission: null,
  budget_cents: null
)
```

