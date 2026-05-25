# Zernio::WebhookPayloadLeadLead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio lead ID (AdLead document ID) |  |
| **leadgen_id** | **String** | Meta lead ID (the platform&#39;s leadgen_id) |  |
| **form_id** | **String** | Lead Gen form ID the lead was submitted against |  |
| **form_name** | **String** | Human-readable form name (best-effort; may be null) | [optional] |
| **ad_id** | **String** | Meta ad ID that drove the lead (null for organic/test leads) | [optional] |
| **adset_id** | **String** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **fields** | **Hash&lt;String, String&gt;** | Flattened question key -&gt; answer map. For multiple-choice questions the value is the option key (e.g. \&quot;k1\&quot;), not the display label.  |  |
| **is_organic** | **Boolean** | True when the lead came from an organic post rather than a paid ad |  |
| **created_at** | **Time** | Meta&#39;s lead creation time (ISO 8601) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLeadLead.new(
  id: null,
  leadgen_id: null,
  form_id: null,
  form_name: null,
  ad_id: null,
  adset_id: null,
  campaign_id: null,
  fields: null,
  is_organic: null,
  created_at: null
)
```

