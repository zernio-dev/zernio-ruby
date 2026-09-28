# Zernio::UpdateBrandedCallingIdentityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | Shown on the callee&#39;s screen. No emoji. | [optional] |
| **call_reasons** | **Array&lt;String&gt;** | 1 to 10 reasons you call, each up to 64 characters. Pick from GET /v1/branded-calling/call-reasons to skip manual vetting. | [optional] |
| **logo_url** | **String** | HTTPS URL of a PNG, JPEG, WebP or SVG logo. Zernio converts it to the 256x256 BMP the carriers require and hosts it. | [optional] |
| **authorizer** | [**CreateBrandedCallingIdentityRequestAuthorizer**](CreateBrandedCallingIdentityRequestAuthorizer.md) |  | [optional] |
| **references** | [**BrandedCallingReferences**](BrandedCallingReferences.md) |  | [optional] |
| **review_answers** | [**Hash&lt;String, UpdateBrandedCallingIdentityRequestReviewAnswersValue&gt;**](UpdateBrandedCallingIdentityRequestReviewAnswersValue.md) | One entry per point id of the open reviewRequest. A text point takes text; a link point takes url; file and link_or_file points take url set to the URL of a file you uploaded first (POST /v1/media/upload). A point id that is not on the open request is a 422. | [optional] |
| **review_note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBrandedCallingIdentityRequest.new(
  display_name: null,
  call_reasons: null,
  logo_url: null,
  authorizer: null,
  references: null,
  review_answers: null,
  review_note: null
)
```

