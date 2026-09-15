# Zernio::ErrorResponseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_exhausted** | **Boolean** | Google Ads 429 only. True when the upstream Google Ads quota is spent rather than a Zernio limit. | [optional] |
| **quota_scope** | **String** | Google Ads 429 only, when Google names the scope. DEVELOPER is the shared developer-token budget; ACCOUNT is your ad account. | [optional] |
| **budget_scope** | **String** | Zernio Google Ads operations-budget 429 only (never set alongside &#x60;quotaExhausted&#x60;). &#x60;user&#x60; is your own burst/daily allowance; &#x60;platform&#x60; is the fleet-wide daily budget shared across customers. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponseDetails.new(
  quota_exhausted: null,
  quota_scope: null,
  budget_scope: null
)
```

