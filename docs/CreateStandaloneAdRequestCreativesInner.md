# Zernio::CreateStandaloneAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **body** | **String** |  |  |
| **image_url** | **String** | Image creative. Mutually exclusive with &#x60;video&#x60;. | [optional] |
| **video** | [**CreateStandaloneAdRequestCreativesInnerVideo**](CreateStandaloneAdRequestCreativesInnerVideo.md) |  | [optional] |
| **link_url** | **String** |  |  |
| **call_to_action** | **String** |  |  |
| **lead_gen_form_id** | **String** | Per-creative Lead Gen Form ID. Wins over the top-level &#x60;leadGenFormId&#x60; so each ad in a campaign can A/B a different form. Forces CTA to SIGN_UP. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCreativesInner.new(
  headline: null,
  body: null,
  image_url: null,
  video: null,
  link_url: null,
  call_to_action: null,
  lead_gen_form_id: null
)
```

