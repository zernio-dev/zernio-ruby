# Zernio::AssignAdAccountUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **user_id** | **String** | Business-scoped user id from GET /v1/ads/businesses/users. |  |
| **tasks** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AssignAdAccountUserRequest.new(
  account_id: null,
  ad_account_id: null,
  user_id: null,
  tasks: null
)
```

