# Zernio::AssignPageUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **page_id** | **String** | Facebook Page id. |  |
| **business_id** | **String** | Business portfolio the user belongs to. |  |
| **user_id** | **String** | Business-scoped user id from GET /v1/ads/businesses/users. |  |
| **tasks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AssignPageUserRequest.new(
  stage: null,
  account_id: null,
  page_id: null,
  business_id: null,
  user_id: null,
  tasks: null
)
```

