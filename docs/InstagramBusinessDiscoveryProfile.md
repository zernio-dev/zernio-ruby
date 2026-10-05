# Zernio::InstagramBusinessDiscoveryProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram user ID of the looked-up account |  |
| **username** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **biography** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |
| **profile_picture_url** | **String** | Temporary CDN URL; download it rather than storing the link. | [optional] |
| **followers_count** | **Integer** |  | [optional] |
| **follows_count** | **Integer** |  | [optional] |
| **media_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramBusinessDiscoveryProfile.new(
  id: null,
  username: null,
  name: null,
  biography: null,
  website: null,
  profile_picture_url: null,
  followers_count: null,
  follows_count: null,
  media_count: null
)
```

