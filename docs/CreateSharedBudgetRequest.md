# Zernio::CreateSharedBudgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Defaults to the account&#39;s connected customer. | [optional] |
| **name** | **String** |  |  |
| **amount** | **Float** | Daily amount in the account&#39;s currency units. |  |
| **type** | **String** | Only daily is accepted (lifetime returns 422). | [optional][default to &#39;daily&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSharedBudgetRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  name: null,
  amount: null,
  type: null
)
```

