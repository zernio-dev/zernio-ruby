# Zernio::GenerateAdPreviewsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **formats** | **Array&lt;String&gt;** | Meta ad_format values, one preview per format. Defaults to [DESKTOP_FEED_STANDARD]. | [optional] |
| **existing_creative_id** | **String** | Preview an existing ad-account creative by id. Mutually exclusive with creativeSpec. | [optional] |
| **creative_spec** | **Hash&lt;String, Object&gt;** | Raw Meta creative spec forwarded verbatim to /generatepreviews. Mutually exclusive with existingCreativeId. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GenerateAdPreviewsRequest.new(
  account_id: null,
  ad_account_id: null,
  formats: null,
  existing_creative_id: null,
  creative_spec: null
)
```

