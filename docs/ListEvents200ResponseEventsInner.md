# Zernio::ListEvents200ResponseEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  | [optional] |
| **profile_id** | **String** | The profile the event was stored under. | [optional] |
| **source** | **String** | Where the event came from: &#x60;api&#x60;, &#x60;relay&#x60;, &#x60;web&#x60;, &#x60;shopify&#x60;, &#x60;woocommerce&#x60;, &#x60;stripe&#x60;, &#x60;hubspot&#x60;, &#x60;salesforce&#x60;, &#x60;meta_leads&#x60;, &#x60;google_leads&#x60;, &#x60;linkedin_leads&#x60;, &#x60;tiktok_leads&#x60; or &#x60;postback&#x60; (an affiliate network&#39;s postback to a tracking link). | [optional] |
| **event_name** | **String** |  | [optional] |
| **event_time** | **Time** |  | [optional] |
| **received_at** | **Time** |  | [optional] |
| **action_source** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **source_url** | **String** | Origin, path and attribution parameters only. | [optional] |
| **utm** | [**StoredEventUtm**](StoredEventUtm.md) |  | [optional] |
| **zrn** | **String** | Ad ID from the &#x60;zrn&#x60; parameter Zernio adds to links of ads it creates. | [optional] |
| **click_ids** | [**StoredEventClickIds**](StoredEventClickIds.md) |  | [optional] |
| **destinations_sent** | **Integer** | Destinations the event was forwarded to. | [optional] |
| **has_email** | **Boolean** |  | [optional] |
| **has_phone** | **Boolean** |  | [optional] |
| **has_external_id** | **Boolean** |  | [optional] |
| **paired_event_id** | **String** | In a &#x60;GET /v1/events&#x60; page: the other copy of the same conversion, when a website tag (&#x60;web&#x60;) and a server send both stored it under different event ids (same event name, a shared identifier, at most 30 minutes apart). &#x60;null&#x60; otherwise, and always &#x60;null&#x60; from &#x60;GET /v1/events/{eventId}&#x60;. | [optional] |
| **ad** | [**StoredEventAd**](StoredEventAd.md) |  | [optional] |
| **campaign** | [**StoredEventCampaign**](StoredEventCampaign.md) |  | [optional] |
| **counted** | **Boolean** | &#x60;false&#x60; for a website (&#x60;web&#x60;) copy of an event name a server source also reported that day: the server copy counts in the overview and campaign results, and this one is kept but not counted. | [optional] |
| **deliveries** | [**Array&lt;ListEvents200ResponseEventsInnerAllOfDeliveriesInner&gt;**](ListEvents200ResponseEventsInnerAllOfDeliveriesInner.md) | Each destination the event was forwarded to, with its latest send status. The full detail is on GET /v1/events/{eventId}. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEvents200ResponseEventsInner.new(
  event_id: null,
  profile_id: null,
  source: null,
  event_name: null,
  event_time: null,
  received_at: null,
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
  paired_event_id: null,
  ad: null,
  campaign: null,
  counted: null,
  deliveries: null
)
```

