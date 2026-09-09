# Zernio::MetaInstagramIdentityRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ig_user_id** | **String** | Instagram identity ID. |  |
| **username** | **String** | Instagram username; empty when Meta does not expose it. |  |
| **profile_picture_url** | **String** | Profile picture URL when available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaInstagramIdentityRef.new(
  ig_user_id: null,
  username: null,
  profile_picture_url: null
)
```

