# Zernio::ErrorResponseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **String** | Meta ad create failures only. The step that failed: &#x60;media&#x60; (image/video download or upload), &#x60;campaign&#x60;, &#x60;adset&#x60;, &#x60;creative&#x60;, &#x60;ad&#x60; (the ad POST itself, where Meta&#39;s code 31 / 3858385 hold and 100 / 1359188 payment rejections land), &#x60;activation&#x60; (switching the created objects on), or &#x60;other&#x60; (a read or check before any write). | [optional] |
| **ad_account_id** | **String** | Meta ad create failures only. The ad account the request wrote to (&#x60;act_...&#x60;). | [optional] |
| **created_objects** | [**Array&lt;ErrorResponseDetailsCreatedObjectsInner&gt;**](ErrorResponseDetailsCreatedObjectsInner.md) | Meta ad create failures only. Every object this request created before failing, in creation order. Objects you referenced (an existing campaign, ad set, creative or video) are never listed and never deleted. | [optional] |
| **unconfirmed_write** | [**ErrorResponseDetailsUnconfirmedWrite**](ErrorResponseDetailsUnconfirmedWrite.md) |  | [optional] |
| **quota_exhausted** | **Boolean** | Google Ads 429 only. True when the upstream Google Ads quota is spent rather than a Zernio limit. | [optional] |
| **quota_scope** | **String** | Google Ads 429 only, when Google names the scope. DEVELOPER is the shared developer-token budget; ACCOUNT is your ad account. | [optional] |
| **budget_scope** | **String** | Zernio Google Ads operations-budget 429 only (never set alongside &#x60;quotaExhausted&#x60;). &#x60;user&#x60; is your own burst/daily allowance; &#x60;platform&#x60; is the fleet-wide daily budget shared across customers. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponseDetails.new(
  stage: null,
  ad_account_id: null,
  created_objects: null,
  unconfirmed_write: null,
  quota_exhausted: null,
  quota_scope: null,
  budget_scope: null
)
```

