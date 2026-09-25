# Zernio::SearchAvailablePhoneNumbers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **require_sms** | **Boolean** | Echo of the &#x60;sms&#x60; filter applied to this search. | [optional] |
| **numbers** | [**Array&lt;SearchAvailablePhoneNumbers200ResponseNumbersInner&gt;**](SearchAvailablePhoneNumbers200ResponseNumbersInner.md) |  | [optional] |
| **masked** | **Boolean** | true on keyless calls. | [optional] |
| **near** | **String** | With &#x60;country&#x3D;auto&#x60;: the caller&#39;s city the results were narrowed to, or null when there was no stock there. | [optional] |
| **claim_id** | **String** | Keyless calls only: a claim for any number matching this search&#39;s country, type and area. | [optional] |
| **claim_url** | **String** | Keyless calls only: signup link for any number matching this search. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAvailablePhoneNumbers200Response.new(
  country: null,
  number_type: null,
  require_sms: null,
  numbers: null,
  masked: null,
  near: null,
  claim_id: null,
  claim_url: null
)
```

