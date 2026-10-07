# Zernio::CtwaSingleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_type** | **String** |  |  |
| **ad** | **Object** | The persisted Ad document. |  |
| **message** | **String** |  |  |
| **warnings** | **Array&lt;String&gt;** | Present when Meta created the ad set differently from the request. Today: Meta kept the ad set without the requested &#x60;whatsappPhoneNumber&#x60; in its promoted_object (the ads still carry it on their WhatsApp button). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaSingleResponse.new(
  ad_type: null,
  ad: null,
  message: null,
  warnings: null
)
```

