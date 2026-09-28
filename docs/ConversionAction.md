# Zernio::ConversionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google Ads conversion action id. |  |
| **name** | **String** |  |  |
| **type** | **String** | Google&#39;s ConversionActionType, e.g. WEBPAGE, UPLOAD_CLICKS. |  |
| **status** | **String** | Google&#39;s ConversionActionStatus, e.g. ENABLED, REMOVED, HIDDEN. |  |
| **category** | **String** | Google&#39;s ConversionActionCategory, e.g. DEFAULT, PURCHASE, LEAD. |  |
| **origin** | **String** | Google&#39;s ConversionOrigin, e.g. WEBSITE, APP. Together with category it names the goal the action belongs to (see GET /v1/ads/conversions/goals). | [optional] |
| **primary_for_goal** | **Boolean** | true &#x3D; primary (counts toward bidding when its goal is biddable), false &#x3D; secondary. Change it with PATCH /v1/ads/conversions/actions/{actionId}. | [optional] |
| **default_value** | **Float** | Value recorded when the conversion carries none. | [optional] |
| **default_currency** | **String** | ISO 4217 currency of defaultValue. | [optional] |
| **always_use_default_value** | **Boolean** | true &#x3D; defaultValue is used even when the conversion sends its own value. | [optional] |
| **counting_type** | **String** | Google&#39;s ConversionActionCountingType: ONE_PER_CLICK or MANY_PER_CLICK. | [optional] |
| **click_through_lookback_window_days** | **Integer** | Days after an ad click a conversion is still credited (1 to 90). | [optional] |
| **view_through_lookback_window_days** | **Integer** | Days after an ad view a conversion is still credited (1 to 30). | [optional] |
| **tag_snippets** | [**Array&lt;ConversionActionTagSnippetsInner&gt;**](ConversionActionTagSnippetsInner.md) | The code a customer pastes onto their site. Present for types Google generates a snippet for (e.g. WEBPAGE); empty otherwise.  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAction.new(
  id: null,
  name: null,
  type: null,
  status: null,
  category: null,
  origin: null,
  primary_for_goal: null,
  default_value: null,
  default_currency: null,
  always_use_default_value: null,
  counting_type: null,
  click_through_lookback_window_days: null,
  view_through_lookback_window_days: null,
  tag_snippets: null
)
```

