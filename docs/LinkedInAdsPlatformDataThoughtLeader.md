# Zernio::LinkedInAdsPlatformDataThoughtLeader

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_urn** | **String** | LinkedIn share or ugcPost URN, urn:li:share:N or urn:li:ugcPost:N. Get it via \&quot;Copy link to post\&quot; on the target LinkedIn post (the URL contains -share- for a share or -ugcPost- for a ugcPost, then the numeric id).  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataThoughtLeader.new(
  post_urn: null
)
```

