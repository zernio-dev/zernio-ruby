# Zernio::ListAdsInstagramAccounts200ResponseAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ig_user_id** | **String** | Instagram identity ID. |  |
| **username** | **String** | Instagram username; empty when Meta does not expose it. |  |
| **profile_picture_url** | **String** | Profile picture URL when available. | [optional] |
| **is_page_backed** | **Boolean** | Whether this is a Page-backed Instagram identity. |  |
| **source** | **String** | Discovery source; Page linkage also uses page_backed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsInstagramAccounts200ResponseAccountsInner.new(
  ig_user_id: null,
  username: null,
  profile_picture_url: null,
  is_page_backed: null,
  source: null
)
```

