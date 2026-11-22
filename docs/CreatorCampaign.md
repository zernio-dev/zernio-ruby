# Zernio::CreatorCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **user_id** | **String** | The workspace billing owner the campaign belongs to. |  |
| **profile_id** | **String** | The profile that scopes the campaign: API keys, teammates and webhooks scoped to it reach the campaign. |  |
| **kind** | **String** |  |  |
| **name** | **String** |  |  |
| **brand_name** | **String** |  |  |
| **status** | **String** | draft until activated; active accepts submissions and accrues; paused stops new submissions; closed is final. |  |
| **type** | **String** | Same as economics.type. |  |
| **currency** | **String** |  |  |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **content_rules** | **String** | Free-text rules shown to creators on the join page. |  |
| **starts_at** | **Time** |  |  |
| **ends_at** | **Time** | No new submissions after this time; the campaign closes once every tracking window had its final read. |  |
| **tracking_days** | **Integer** | How long each submitted post is tracked. |  |
| **hold_days** | **Integer** | Days approved earnings are held before they become payable. |  |
| **max_post_age_minutes** | **Integer** | A post older than this many minutes when submitted is refused. Null (the default) accepts any age. Either way, a post published before the campaign started (&#x60;startsAt&#x60;, or &#x60;activatedAt&#x60; without one) is refused. |  |
| **activated_at** | **Time** | When the campaign was first activated. Without &#x60;startsAt&#x60;, posts must be published after this moment. |  |
| **settlement** | **String** | none: settle records a payout made elsewhere. external: you pay from your own rails on campaign_payout.payable and settle with your reference. treasury: you pay by card with a payout batch and Zernio pays each creator in your name 7 days after the charge. |  |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  |  |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) |  |  |
| **branding** | [**CreatorCampaignBranding**](CreatorCampaignBranding.md) |  |  |
| **budget_exhausted_at** | **Time** |  |  |
| **closed_at** | **Time** |  |  |
| **payable_scanned_at** | **Time** | Internal watermark of the payable scan. |  |
| **join_approval** | **String** | auto: creators who join through the open link are active at once. manual: they land &#x60;pending&#x60; until you approve or deny them. Personal invites are never held. |  |
| **require_draft_approval** | **Boolean** | Creators upload a draft for review first, and submit the live post for an approved draft (&#x60;draftId&#x60;). |  |
| **store_account_id** | **String** | The connected store (Shopify or WooCommerce) whose orders pay commission and whose products creators can ask as samples. Null when the campaign has neither. |  |
| **sample_products** | [**Array&lt;CreatorCampaignSampleProduct&gt;**](CreatorCampaignSampleProduct.md) | Products creators can ask a free sample of. |  |
| **sample_content_due_days** | **Integer** | Days after a sample is approved before a creator with no post since shows as owing content (&#x60;contentOwed&#x60;). |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **has_open_invite** | **Boolean** | True once an open invite link was created. The link itself is returned only when it is created. |  |
| **consumed_cents** | **Integer** | Budget used so far: earnings accrued, approved or adjusted against the campaign. |  |
| **participant_count** | **Integer** |  |  |
| **submission_counts** | [**CampaignSubmissionCounts**](CampaignSubmissionCounts.md) |  |  |
| **payable_cents** | **Integer** | What the campaign&#39;s creators can be paid now, summed over every participant&#39;s payable balance. |  |
| **landing_url** | **String** | The page creator tracking links open. | [optional] |
| **code_discount_percent** | **Integer** | What each creator discount code takes off. | [optional] |
| **auto_payout** | [**CreatorCampaignAutoPayout**](CreatorCampaignAutoPayout.md) |  | [optional] |
| **pending_participant_count** | **Integer** | Creators who asked to join through the open link and wait for a decision. Not counted in &#x60;participantCount&#x60;. |  |
| **draft_counts** | [**CampaignDraftCounts**](CampaignDraftCounts.md) |  |  |
| **sample_counts** | [**CampaignSampleCounts**](CampaignSampleCounts.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaign.new(
  id: null,
  user_id: null,
  profile_id: null,
  kind: clipping,
  name: null,
  brand_name: null,
  status: null,
  type: null,
  currency: usd,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  tracking_days: null,
  hold_days: null,
  max_post_age_minutes: null,
  activated_at: null,
  settlement: null,
  economics: null,
  caps: null,
  branding: null,
  budget_exhausted_at: null,
  closed_at: null,
  payable_scanned_at: null,
  join_approval: null,
  require_draft_approval: null,
  store_account_id: null,
  sample_products: null,
  sample_content_due_days: null,
  created_at: null,
  updated_at: null,
  has_open_invite: null,
  consumed_cents: null,
  participant_count: null,
  submission_counts: null,
  payable_cents: null,
  landing_url: null,
  code_discount_percent: null,
  auto_payout: null,
  pending_participant_count: null,
  draft_counts: null,
  sample_counts: null
)
```

