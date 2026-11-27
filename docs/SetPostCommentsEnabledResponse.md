# Zernio::SetPostCommentsEnabledResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **comments_enabled** | **Boolean** | Whether comments are now on for the post. | [optional] |
| **platform_post_id** | **String** | The Instagram media ID that was changed. | [optional] |
| **account_id** | **String** | The Zernio account whose post was changed. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetPostCommentsEnabledResponse.new(
  success: null,
  comments_enabled: null,
  platform_post_id: null,
  account_id: null,
  message: null
)
```

