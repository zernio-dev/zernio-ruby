# Zernio::AssignAdAccountUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **user_id** | **String** | Business-scoped user id from GET /v1/ads/businesses/users. |  |
| **tasks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AssignAdAccountUserRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  user_id: null,
  tasks: null
)
```

