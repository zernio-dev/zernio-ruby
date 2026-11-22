# Zernio::CreateGoogleBusinessLocation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **validate_only** | **Boolean** | Present and true when validateOnly was requested. | [optional] |
| **location** | **Hash&lt;String, Object&gt;** | The location as Google returns it. &#x60;id&#x60; is present on a real create. | [optional] |
| **voice_of_merchant_state** | **Hash&lt;String, Object&gt;** | Verification state of the new listing; null if Google could not return it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleBusinessLocation200Response.new(
  success: null,
  account_id: null,
  validate_only: null,
  location: null,
  voice_of_merchant_state: null
)
```

