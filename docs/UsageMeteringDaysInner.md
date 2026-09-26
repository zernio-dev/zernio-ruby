# Zernio::UsageMeteringDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **accounts** | **Float** |  | [optional] |
| **numbers** | **Float** |  | [optional] |
| **imessage** | **Float** | iMessage sender fees. | [optional] |
| **calls** | **Float** |  | [optional] |
| **sms** | **Float** |  | [optional] |
| **messages** | **Float** | Managed outbound message fees. | [optional] |
| **verify** | **Float** | Verify (per verification) fees. | [optional] |
| **dlc** | **Float** | 10DLC registration (brand + campaign) fees. | [optional] |
| **x_api** | **Float** |  | [optional] |
| **ads** | **Float** | Managed ads fees. | [optional] |
| **credits** | **Float** | Applied credits/discounts (negative). | [optional] |
| **other** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMeteringDaysInner.new(
  date: null,
  accounts: null,
  numbers: null,
  imessage: null,
  calls: null,
  sms: null,
  messages: null,
  verify: null,
  dlc: null,
  x_api: null,
  ads: null,
  credits: null,
  other: null
)
```

