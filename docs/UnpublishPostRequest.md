# Zernio::UnpublishPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to delete the post from |  |
| **account_id** | **String** | Which account&#39;s copy to delete when the post was published to several accounts on this platform. Required in that case. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UnpublishPostRequest.new(
  platform: null,
  account_id: null
)
```

