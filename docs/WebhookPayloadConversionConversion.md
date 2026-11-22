# Zernio::WebhookPayloadConversionConversion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **event_name** | **String** |  |  |
| **event_time** | **Time** |  |  |
| **received_at** | **Time** |  |  |
| **source** | **String** | Who sent it: &#x60;api&#x60;, &#x60;relay&#x60;, a lead form (&#x60;meta_leads&#x60;, &#x60;google_leads&#x60;, &#x60;linkedin_leads&#x60;, &#x60;tiktok_leads&#x60;), a store (&#x60;shopify&#x60;, &#x60;woocommerce&#x60;), &#x60;stripe&#x60;, &#x60;hubspot&#x60;, &#x60;salesforce&#x60;, &#x60;web&#x60; or &#x60;postback&#x60; (an affiliate network&#39;s postback to a tracking link). |  |
| **action_source** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **source_url** | **String** | Origin, path and attribution parameters only. | [optional] |
| **utm** | [**StoredEventUtm**](StoredEventUtm.md) |  | [optional] |
| **zrn** | **String** |  | [optional] |
| **click_ids** | [**StoredEventClickIds**](StoredEventClickIds.md) |  | [optional] |
| **destinations_sent** | **Integer** |  | [optional] |
| **has_email** | **Boolean** |  | [optional] |
| **has_phone** | **Boolean** |  | [optional] |
| **has_external_id** | **Boolean** |  | [optional] |
| **campaign** | [**WebhookPayloadConversionConversionCampaign**](WebhookPayloadConversionConversionCampaign.md) |  |  |
| **campaign_match** | **String** | &#x60;matched&#x60;, or why there is no campaign: &#x60;no_hint&#x60;, &#x60;no_campaign&#x60;, &#x60;ambiguous&#x60;, &#x60;not_counted&#x60; or &#x60;match_failed&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversionConversion.new(
  event_id: null,
  event_name: null,
  event_time: null,
  received_at: null,
  source: null,
  action_source: null,
  value: null,
  currency: null,
  source_url: null,
  utm: null,
  zrn: null,
  click_ids: null,
  destinations_sent: null,
  has_email: null,
  has_phone: null,
  has_external_id: null,
  campaign: null,
  campaign_match: null
)
```

