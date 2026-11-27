# Zernio::InviteAdAccountToManagerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **manager_customer_id** | **String** | Manager customer id, digits only. |  |
| **client_customer_id** | **String** | Client customer id to invite, digits only. |  |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InviteAdAccountToManagerRequest.new(
  stage: null,
  account_id: null,
  manager_customer_id: null,
  client_customer_id: null,
  validate_only: null
)
```

