# Zernio::ConversationAdAttribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Meta&#39;s ad ID: &#x60;meta_ad_id&#x60; on Instagram and Facebook, &#x60;ctwa_source_id&#x60; on WhatsApp when &#x60;ctwa_source_type&#x60; is &#x60;ad&#x60;. Accepted by &#x60;GET /v1/ads/{adId}&#x60;. |  |
| **name** | **String** | The synced ad&#39;s name, else the ad title or headline Meta sent. |  |
| **synced** | **Boolean** | True when the ad was found in your synced ads. |  |
| **campaign_id** | **String** | Meta campaign ID. Synced ads only. |  |
| **campaign_name** | **String** | Campaign name. Synced ads only. |  |
| **ad_set_id** | **String** | Meta ad set ID. Synced ads only. |  |
| **ad_set_name** | **String** | Ad set name. Synced ads only. |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...). Synced ads only. |  |
| **ad_account_name** | **String** | Ad account name. Synced ads only. |  |
| **platform_post_id** | **String** | The post the ad promotes, from the synced ad or else Meta&#39;s &#x60;post_id&#x60; on the click. |  |
| **is_external** | **Boolean** | True when the ad was created outside Zernio (synced from Ads Manager), false when created through Zernio, null when not synced. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversationAdAttribution.new(
  ad_id: null,
  name: null,
  synced: null,
  campaign_id: null,
  campaign_name: null,
  ad_set_id: null,
  ad_set_name: null,
  ad_account_id: null,
  ad_account_name: null,
  platform_post_id: null,
  is_external: null
)
```

