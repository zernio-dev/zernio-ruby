# Zernio::WebhookPayloadAdStatusChangedAdObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **level** | **String** | Hierarchy level the status applies to. Mirrors Meta&#39;s &#x60;level&#x60;. Creative-level events are not forwarded. |  |
| **platform_id** | **String** | Platform-native ID of the campaign / ad set / ad. For Meta this is the bare numeric ID (e.g. &#x60;120244894077860689&#x60;).  |  |
| **platform_ad_account_id** | **String** | Platform-native ad-account ID. For Meta this uses the &#x60;act_&lt;id&gt;&#x60; shape.  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdStatusChangedAdObject.new(
  level: null,
  platform_id: 120244894077860689,
  platform_ad_account_id: act_2129800524463520
)
```

