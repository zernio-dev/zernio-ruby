# Zernio::GetEventsOverview200ResponsePlatformsInnerDroppedToday

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consent_denied** | **Integer** | The visitor denied a consent signal the platform needs. | [optional] |
| **consent_missing** | **Integer** | A visitor in the EEA, UK or CH with no consent given. | [optional] |
| **invalid** | **Integer** | Refused before sending as invalid (also counted in &#x60;failedToday&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponsePlatformsInnerDroppedToday.new(
  consent_denied: null,
  consent_missing: null,
  invalid: null
)
```

