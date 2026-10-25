# Zernio::CtwaSingleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_type** | **String** |  |  |
| **ad** | **Object** | The persisted Ad document. |  |
| **message** | **String** |  |  |
| **warnings** | **Array&lt;String&gt;** | Present when Meta created the ad set differently from the request: a multi-destination ad set (&#x60;destinations&#x60; including whatsapp) that Meta kept without the requested &#x60;whatsappPhoneNumber&#x60; in its promoted_object, which an existing ad set cannot change (a WhatsApp-only ad set returns no such warning, because every ad routes conversations by the number on its WhatsApp button), or the ad set joined a CBO campaign (&#x60;existingCampaignId&#x60;) whose own bid strategy applies, so a different &#x60;bidStrategy&#x60; or a &#x60;roasAverageFloor&#x60; that strategy cannot take was not applied. | [optional] |

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

