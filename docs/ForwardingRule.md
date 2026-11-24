# Zernio::ForwardingRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Rule ID, used to delete it. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** | Platform destination (pixel, conversion action, rule, ...). | [optional] |
| **event_names** | **Array&lt;String&gt;** | Event names forwarded to this destination; null forwards every event. | [optional] |
| **sources** | **Array&lt;String&gt;** | Event sources forwarded to this destination; null forwards events from every source. | [optional] |
| **api_secret_verified** | **Boolean** | Only when an &#x60;apiSecret&#x60; was saved by this request. Google Analytics never confirms a Measurement Protocol API secret, so it is &#x60;false&#x60; there: the first events in GA4 Realtime prove the secret is right. | [optional] |
| **event_name_map** | **Hash&lt;String, String&gt;** | Renames events for this destination, such as &#x60;{ \&quot;Lead\&quot;: \&quot;Purchase\&quot; }&#x60;; null sends every event under its own name. | [optional] |
| **value_override** | [**ForwardingRuleValueOverride**](ForwardingRuleValueOverride.md) |  | [optional] |
| **value_condition** | [**ForwardingRuleValueCondition**](ForwardingRuleValueCondition.md) |  | [optional] |
| **event_values** | [**Hash&lt;String, ForwardingRuleEventValue&gt;**](ForwardingRuleEventValue.md) | The value this destination gets for each event name, keyed by the name as received (before &#x60;eventNameMap&#x60; renames it), such as a &#x60;Lead&#x60; worth 20 EUR and a &#x60;QualifiedLead&#x60; worth 150 EUR. An event listed here ignores &#x60;valueOverride&#x60;; events not listed keep it.  The dashboard&#39;s Value sent section (Ads, Conversions, a destination) sets this map. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ForwardingRule.new(
  id: null,
  profile_id: null,
  account_id: null,
  destination_id: null,
  event_names: null,
  sources: null,
  api_secret_verified: null,
  event_name_map: null,
  value_override: null,
  value_condition: null,
  event_values: {Lead&#x3D;{mode&#x3D;fixed, amount&#x3D;20, currency&#x3D;EUR}, QualifiedLead&#x3D;{mode&#x3D;fixed, amount&#x3D;150, currency&#x3D;EUR}, Purchase&#x3D;{mode&#x3D;original}},
  created_at: null
)
```

