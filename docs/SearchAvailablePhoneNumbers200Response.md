# Zernio::SearchAvailablePhoneNumbers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **require_sms** | **Boolean** | Echo of the &#x60;sms&#x60; filter applied to this search. | [optional] |
| **numbers** | [**Array&lt;SearchAvailablePhoneNumbers200ResponseNumbersInner&gt;**](SearchAvailablePhoneNumbers200ResponseNumbersInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAvailablePhoneNumbers200Response.new(
  country: null,
  number_type: null,
  require_sms: null,
  numbers: null
)
```

