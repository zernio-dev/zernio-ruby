# Zernio::CampaignSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator** | [**CreatorCampaignAdResultsSubmissionsInnerCreator**](CreatorCampaignAdResultsSubmissionsInnerCreator.md) |  |  |
| **store_account_id** | **String** | The store the sample comes from. |  |
| **product_id** | **String** |  |  |
| **variant_id** | **String** |  |  |
| **product_title** | **String** |  |  |
| **variant_title** | **String** |  |  |
| **shipping_address** | [**CampaignSampleShippingAddress**](CampaignSampleShippingAddress.md) |  |  |
| **note** | **String** | The creator&#39;s note. |  |
| **status** | **String** | pending: waits for review. approved: a discount code was created. shipped: you recorded that you sent it. declined: final for this request. |  |
| **decline_reason** | **String** |  |  |
| **discount_code** | **String** | The 100%-off, single-use code for the product, set on approval. |  |
| **tracking_url** | **String** |  |  |
| **approved_at** | **Time** |  |  |
| **shipped_at** | **Time** |  |  |
| **requested_at** | **Time** |  |  |
| **content_due_at** | **Time** | When a post is due: the approval plus the campaign&#39;s &#x60;sampleContentDueDays&#x60;. Null unless approved or shipped. |  |
| **content_owed** | **Boolean** | True past &#x60;contentDueAt&#x60; when the creator submitted no post since the approval. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignSample.new(
  id: null,
  campaign_id: null,
  participant_id: null,
  creator: null,
  store_account_id: null,
  product_id: null,
  variant_id: null,
  product_title: null,
  variant_title: null,
  shipping_address: null,
  note: null,
  status: null,
  decline_reason: null,
  discount_code: null,
  tracking_url: null,
  approved_at: null,
  shipped_at: null,
  requested_at: null,
  content_due_at: null,
  content_owed: null
)
```

