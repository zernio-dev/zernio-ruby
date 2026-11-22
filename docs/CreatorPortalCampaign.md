# Zernio::CreatorPortalCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The campaign id, as in a link-recovery URL. |  |
| **name** | **String** |  |  |
| **brand_name** | **String** |  |  |
| **logo_url** | **String** |  |  |
| **theme** | **Object** | Same keys as the &#x60;welcomeTheme&#x60; parameter of &#x60;GET /v1/connect/{platform}&#x60;. |  |
| **status** | **String** |  |  |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **content_rules** | **String** |  |  |
| **starts_at** | **Time** |  |  |
| **ends_at** | **Time** |  |  |
| **started_at** | **Time** | Posts published before this moment do not count: &#x60;startsAt&#x60;, else when the campaign went live. |  |
| **currency** | **String** |  |  |
| **economics** | [**CreatorPortalEconomics**](CreatorPortalEconomics.md) |  |  |
| **max_post_age_minutes** | **Integer** | A post must be submitted within this many minutes of publishing. Null means any age. Either way, only posts published after the campaign started are accepted. |  |
| **hold_days** | **Integer** | Days approved earnings stay owed before they become payable. |  |
| **tracking_days** | **Integer** | Days each submitted post is tracked for views. |  |
| **max_accounts_per_participant** | **Integer** | How many connected accounts can submit posts. Null means no limit. |  |
| **join_approval** | **String** | manual: a creator who joins through the open link waits &#x60;pending&#x60; until the campaign team accepts them. |  |
| **require_draft_approval** | **Boolean** | The creator uploads a draft for review first, and submits the live post for an approved draft. |  |
| **sample_products** | [**Array&lt;CreatorCampaignSampleProduct&gt;**](CreatorCampaignSampleProduct.md) | Products the creator can ask a free sample of; empty when the campaign offers none. |  |
| **sample_content_due_days** | **Integer** | Days after a sample is approved by which a post is expected. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalCampaign.new(
  id: null,
  name: null,
  brand_name: null,
  logo_url: null,
  theme: null,
  status: null,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  started_at: null,
  currency: null,
  economics: null,
  max_post_age_minutes: null,
  hold_days: null,
  tracking_days: null,
  max_accounts_per_participant: null,
  join_approval: null,
  require_draft_approval: null,
  sample_products: null,
  sample_content_due_days: null
)
```

