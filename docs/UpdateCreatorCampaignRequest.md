# Zernio::UpdateCreatorCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **brand_name** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **content_rules** | **String** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **tracking_days** | **Integer** |  | [optional] |
| **hold_days** | **Integer** |  | [optional] |
| **max_post_age_minutes** | **Integer** | Null removes the limit. | [optional] |
| **settlement** | **String** |  | [optional] |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  | [optional] |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) |  | [optional] |
| **branding** | [**CreatorCampaignBranding**](CreatorCampaignBranding.md) |  | [optional] |
| **landing_url** | **String** | The page creator tracking links open. Required unless &#x60;attribution&#x60; is &#x60;code&#x60;. | [optional] |
| **code_discount_percent** | **Integer** | What each creator&#39;s discount code takes off an order. Required unless &#x60;attribution&#x60; is &#x60;link&#x60;. | [optional] |
| **auto_payout** | [**CreatorCampaignAutoPayout**](CreatorCampaignAutoPayout.md) |  | [optional] |
| **join_approval** | **String** | manual holds creators who join through the open link as &#x60;pending&#x60; until you approve them. Personal invites are never held. | [optional] |
| **require_draft_approval** | **Boolean** | Creators upload a draft for review before publishing, and each submitted post must name an approved draft. | [optional] |
| **store_account_id** | **String** | A connected Shopify or WooCommerce store account. On &#x60;commission&#x60; and smart &#x60;retainer&#x60; economics its orders pay commission: required there, and fixed once such a campaign leaves draft.  On any campaign creators can ask for free samples of its products (&#x60;sampleProductIds&#x60;). Changing it without &#x60;sampleProductIds&#x60; clears the sample products; null removes the store and the products.  | [optional] |
| **sample_product_ids** | **Array&lt;String&gt;** | Product ids in the store that creators can ask a free sample of. Each is read from the store and saved as &#x60;sampleProducts&#x60;; an unknown product answers 404 &#x60;product_not_found&#x60;. Needs a store, otherwise 400 &#x60;missing_required_field&#x60; (&#x60;param: storeAccountId&#x60;). | [optional] |
| **sample_content_due_days** | **Integer** | Days after a sample is approved before a creator with no post since shows as owing content. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCreatorCampaignRequest.new(
  name: null,
  brand_name: null,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  tracking_days: null,
  hold_days: null,
  max_post_age_minutes: null,
  settlement: null,
  economics: null,
  caps: null,
  branding: null,
  landing_url: null,
  code_discount_percent: null,
  auto_payout: null,
  join_approval: null,
  require_draft_approval: null,
  store_account_id: null,
  sample_product_ids: null,
  sample_content_due_days: null
)
```

