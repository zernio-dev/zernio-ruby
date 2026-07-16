# Zernio::UpdateAdSetRequestPlatformSpecificData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **optimization_goal** | **String** | Meta ad-set optimization_goal (e.g. OFFSITE_CONVERSIONS, LANDING_PAGE_VIEWS). | [optional] |
| **billing_event** | **String** | Meta ad-set billing_event (e.g. IMPRESSIONS, LINK_CLICKS, THRUPLAY). | [optional] |
| **start_date** | **String** | Ad set start_time (ISO 8601). | [optional] |
| **end_date** | **String** | Ad set end_time (ISO 8601). | [optional] |
| **promoted_object** | [**UpdateAdSetRequestPlatformSpecificDataPromotedObject**](UpdateAdSetRequestPlatformSpecificDataPromotedObject.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSetRequestPlatformSpecificData.new(
  optimization_goal: null,
  billing_event: null,
  start_date: null,
  end_date: null,
  promoted_object: null
)
```

