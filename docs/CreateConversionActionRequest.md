# Zernio::CreateConversionActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID. Must be a &#x60;googleads&#x60; account. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Resolved automatically when the connection has exactly one accessible customer. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **name** | **String** |  |  |
| **type** | **String** | Only WEBPAGE is supported for creation today. |  |
| **default_value** | **Float** | Default conversion value used when an event doesn&#39;t carry its own value. | [optional] |
| **always_use_default_value** | **Boolean** | When true, always use defaultValue and ignore any value sent with the event. Defaults to true when defaultValue is set. | [optional] |
| **category** | **String** | conversion_action.category. Defaults to DEFAULT on create. | [optional] |
| **counting_type** | **String** | ONE_PER_CLICK counts one conversion per ad click (leads); MANY_PER_CLICK counts every one (purchases). | [optional] |
| **default_currency** | **String** | ISO 4217 currency of defaultValue (value_settings.default_currency_code). | [optional] |
| **click_through_lookback_window_days** | **Integer** | Days after an ad click a conversion still counts. | [optional] |
| **view_through_lookback_window_days** | **Integer** | Days after an ad view a view-through conversion still counts. | [optional] |
| **primary_for_goal** | **Boolean** | true &#x3D; primary (counts toward bidding when its goal is biddable), false &#x3D; secondary. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConversionActionRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  type: null,
  default_value: null,
  always_use_default_value: null,
  category: null,
  counting_type: null,
  default_currency: null,
  click_through_lookback_window_days: null,
  view_through_lookback_window_days: null,
  primary_for_goal: null
)
```

