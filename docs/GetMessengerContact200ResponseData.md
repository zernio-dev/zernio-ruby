# Zernio::GetMessengerContact200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locale** | **String** | Locale as Meta reports it, for example &#x60;es_ES&#x60;. |  |
| **timezone** | **Float** | Offset from UTC in hours, fractional for half-hour zones (for example -5.5). |  |
| **gender** | **String** | Gender as Meta reports it, for example &#x60;female&#x60; or &#x60;male&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetMessengerContact200ResponseData.new(
  locale: null,
  timezone: null,
  gender: null
)
```

