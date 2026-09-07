# Zernio::CreatePost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** | Always true on this response |  |
| **can_publish** | **Boolean** | True only when every evaluated TikTok account can publish now |  |
| **tiktok** | [**Array&lt;CreatePost200ResponseTiktokInner&gt;**](CreatePost200ResponseTiktokInner.md) | One verdict per &#x60;tiktok&#x60; entry in the request, in request order |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePost200Response.new(
  dry_run: null,
  can_publish: null,
  tiktok: null
)
```

