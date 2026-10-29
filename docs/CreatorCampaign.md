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
| **settlement** | **String** | none: settle records a payout made elsewhere. external: you pay from your own rails on campaign_payout.payable and settle with your reference. treasury: settle moves the money from your Zernio balance to the creator&#39;s Stripe account, and the creator sets up payouts from their campaign page. |  |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  |  |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) |  |  |
| **branding** | [**CreatorCampaignBranding**](CreatorCampaignBranding.md) |  |  |
| **budget_exhausted_at** | **Time** |  |  |
| **closed_at** | **Time** |  |  |
| **payable_scanned_at** | **Time** | Internal watermark of the payable scan. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **has_open_invite** | **Boolean** | True once an open invite link was created. The link itself is returned only when it is created. |  |
| **consumed_cents** | **Integer** | Budget used so far: earnings accrued, approved or adjusted against the campaign. |  |
| **participant_count** | **Integer** |  |  |
| **submission_counts** | [**CampaignSubmissionCounts**](CampaignSubmissionCounts.md) |  |  |
| **payable_cents** | **Integer** | What the campaign&#39;s creators can be paid now, summed over every participant&#39;s payable balance. |  |

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
  created_at: null,
  updated_at: null,
  has_open_invite: null,
  consumed_cents: null,
  participant_count: null,
  submission_counts: null,
  payable_cents: null
)
```

