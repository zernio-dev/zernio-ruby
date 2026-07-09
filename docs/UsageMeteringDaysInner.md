# Zernio::UsageMeteringDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **accounts** | **Float** |  | [optional] |
| **numbers** | **Float** |  | [optional] |
| **calls** | **Float** |  | [optional] |
| **sms** | **Float** |  | [optional] |
| **dlc** | **Float** | 10DLC registration (brand + campaign) fees. | [optional] |
| **x_api** | **Float** |  | [optional] |
| **credits** | **Float** | Applied credits/discounts (negative). | [optional] |
| **other** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMeteringDaysInner.new(
  date: null,
  accounts: null,
  numbers: null,
  calls: null,
  sms: null,
  dlc: null,
  x_api: null,
  credits: null,
  other: null
)
```

