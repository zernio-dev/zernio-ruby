# Zernio::UpdateConversionDestinationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **enabled** | **Boolean** | Setting &#x60;false&#x60; is equivalent to calling DELETE — the rule will appear as &#x60;inactive&#x60; afterwards.  | [optional] |
| **attribution_type** | **String** |  | [optional] |
| **post_click_attribution_window_size** | **Integer** | 365 only allowed for LEAD, PURCHASE, ADD_TO_CART, QUALIFIED_LEAD, SUBMIT_APPLICATION rule types.  | [optional] |
| **view_through_attribution_window_size** | **Integer** | 365 only allowed for LEAD, PURCHASE, ADD_TO_CART, QUALIFIED_LEAD, SUBMIT_APPLICATION rule types.  | [optional] |
| **value_type** | **String** |  | [optional] |
| **value** | [**UpdateConversionDestinationRequestValue**](UpdateConversionDestinationRequestValue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateConversionDestinationRequest.new(
  ad_account_id: null,
  name: null,
  enabled: null,
  attribution_type: null,
  post_click_attribution_window_size: null,
  view_through_attribution_window_size: null,
  value_type: null,
  value: null
)
```

