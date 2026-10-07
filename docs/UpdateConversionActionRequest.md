# Zernio::UpdateConversionActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** | REMOVED removes the action and must be sent alone; ENABLED restores a removed one. | [optional] |
| **default_value** | **Float** |  | [optional] |
| **always_use_default_value** | **Boolean** |  | [optional] |
| **category** | **String** | conversion_action.category. Defaults to DEFAULT on create. | [optional] |
| **counting_type** | **String** | ONE_PER_CLICK counts one conversion per ad click (leads); MANY_PER_CLICK counts every one (purchases). | [optional] |
| **default_currency** | **String** | ISO 4217 currency of defaultValue (value_settings.default_currency_code). | [optional] |
| **click_through_lookback_window_days** | **Integer** | Days after an ad click a conversion still counts. | [optional] |
| **view_through_lookback_window_days** | **Integer** | Days after an ad view a view-through conversion still counts. | [optional] |
| **primary_for_goal** | **Boolean** | true &#x3D; primary (counts toward bidding when its goal is biddable), false &#x3D; secondary. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateConversionActionRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  status: null,
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

