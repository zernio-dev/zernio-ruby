# Zernio::AssignPageUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **page_id** | **String** | Facebook Page id. |  |
| **business_id** | **String** | Business portfolio the user belongs to. |  |
| **user_id** | **String** | Business-scoped user id from GET /v1/ads/businesses/users. |  |
| **tasks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AssignPageUserRequest.new(
  account_id: null,
  page_id: null,
  business_id: null,
  user_id: null,
  tasks: null
)
```

