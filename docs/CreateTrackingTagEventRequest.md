# Zernio::CreateTrackingTagEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. | [optional] |
| **name** | **String** |  |  |
| **type** | **String** | The platform&#39;s own event type enum value (e.g. &#x60;PURCHASE&#x60;). | [optional] |
| **site_event** | **String** | Neutral alternative to &#x60;type&#x60;, mapped to the platform&#39;s closest type. | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **default_value** | **Float** |  | [optional] |
| **currency** | **String** | ISO 4217 code. | [optional] |
| **click_window_days** | **Integer** |  | [optional] |
| **view_window_days** | **Integer** |  | [optional] |
| **url_contains** | **String** | Fire only on pages whose URL contains this text (case-insensitive). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTrackingTagEventRequest.new(
  ad_account_id: null,
  name: null,
  type: null,
  site_event: null,
  enabled: null,
  default_value: null,
  currency: null,
  click_window_days: null,
  view_window_days: null,
  url_contains: null
)
```

