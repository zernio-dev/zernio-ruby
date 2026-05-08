# Zernio::CreateConversionDestinationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Sponsored ad account ID. Numeric (e.g. \&quot;5123456\&quot;) or full &#x60;urn:li:sponsoredAccount:{id}&#x60; URN.  |  |
| **name** | **String** |  |  |
| **type** | **String** | Either a unified standard event name (e.g. \&quot;Purchase\&quot;, \&quot;Lead\&quot;, \&quot;AddToCart\&quot;) or a LinkedIn rule type enum value (e.g. \&quot;PURCHASE\&quot;, \&quot;QUALIFIED_LEAD\&quot;). The API maps standard names to LinkedIn enum values automatically.  |  |
| **attribution_type** | **String** |  | [optional] |
| **post_click_attribution_window_size** | **Integer** | Default 30. 365 only allowed for LEAD, PURCHASE, ADD_TO_CART, QUALIFIED_LEAD, SUBMIT_APPLICATION rule types — the API rejects other combinations locally.  | [optional] |
| **view_through_attribution_window_size** | **Integer** | Default 7. Same 365-day-window type restriction applies as &#x60;postClickAttributionWindowSize&#x60;.  | [optional] |
| **value_type** | **String** | DYNAMIC (default) uses the per-event &#x60;value&#x60; from &#x60;sendConversions&#x60;. FIXED uses the rule&#39;s &#x60;value&#x60; field. NO_VALUE drops monetary value entirely.  | [optional] |
| **value** | [**CreateConversionDestinationRequestValue**](CreateConversionDestinationRequestValue.md) |  | [optional] |
| **auto_association_type** | **String** | Controls campaign association at rule-creation time: - ALL_CAMPAIGNS: associate the rule with every active,   paused, and draft campaign in the ad account - OBJECTIVE_BASED: associate only campaigns whose   objective matches the rule&#39;s type - NONE: don&#39;t auto-associate. Manage associations via   the &#x60;/associations&#x60; endpoints below. Note: auto-association runs once at create time; new campaigns added after the rule still need explicit association.  | [optional][default to &#39;ALL_CAMPAIGNS&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConversionDestinationRequest.new(
  ad_account_id: null,
  name: null,
  type: null,
  attribution_type: null,
  post_click_attribution_window_size: null,
  view_through_attribution_window_size: null,
  value_type: null,
  value: null,
  auto_association_type: null
)
```

