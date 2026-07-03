# Zernio::GetWhatsAppNumberKycForm200ResponseFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **kind** | **String** | \&quot;action\&quot; &#x3D; an out-of-band verification (e.g. Onfido); not filled here, fulfilled after the order via a link. | [optional] |
| **description** | **String** | Plain-English explanation of what to provide. | [optional] |
| **example** | **String** | Concrete example value. | [optional] |
| **local_to** | **String** | ISO country the value must be local to | [optional] |
| **audience** | **String** | When set, the requirement applies ONLY to this end-user type — provide it for that type and OMIT it for the other (e.g. Brazil: \&quot;Cartão CNPJ\&quot; is business-only, \&quot;CPF\&quot; and \&quot;ID/Passport Copy\&quot; are personal-only). Submitting both sets makes the regulator ask whether the number is for personal or business use and stalls the review. Pass &#x60;entityType&#x60; on POST so the server drops the inapplicable set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberKycForm200ResponseFieldsInner.new(
  requirement_id: null,
  label: null,
  kind: null,
  description: null,
  example: null,
  local_to: null,
  audience: null
)
```

