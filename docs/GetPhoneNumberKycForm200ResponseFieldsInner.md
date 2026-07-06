# Zernio::GetPhoneNumberKycForm200ResponseFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **kind** | **String** | \&quot;action\&quot; &#x3D; an out-of-band verification (e.g. Onfido); not filled here, fulfilled after the order via a link. | [optional] |
| **description** | **String** | Plain-English explanation of what to provide. | [optional] |
| **example** | **String** | Concrete example value. | [optional] |
| **local_to** | **String** | ISO country the value must be local to | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberKycForm200ResponseFieldsInner.new(
  requirement_id: null,
  label: null,
  kind: null,
  description: null,
  example: null,
  local_to: null
)
```

