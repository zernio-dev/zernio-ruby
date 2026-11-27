# Zernio::SetPartnershipAdPermissionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** |  |  |
| **creator_username** | **String** |  |  |
| **revoke** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetPartnershipAdPermissionRequest.new(
  stage: null,
  account_id: null,
  creator_username: null,
  revoke: null
)
```

