# Zernio::UpdateGoogleBusinessLocationDetailsRequestMoreHoursInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hours_type_id** | **String** | Hours type from Google&#39;s catalog (e.g. &#39;DELIVERY&#39;, &#39;DRIVE_THROUGH&#39;) | [optional] |
| **periods** | [**Array&lt;UpdateGoogleBusinessLocationDetailsRequestRegularHoursPeriodsInner&gt;**](UpdateGoogleBusinessLocationDetailsRequestRegularHoursPeriodsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleBusinessLocationDetailsRequestMoreHoursInner.new(
  hours_type_id: null,
  periods: null
)
```

