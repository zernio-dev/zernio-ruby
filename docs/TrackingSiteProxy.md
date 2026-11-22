# Zernio::TrackingSiteProxy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Such as &#x60;/zt&#x60;: the snippet loads &#x60;https://&lt;first domain&gt;/zt/z.js&#x60;. | [optional] |
| **secret** | **String** | Signs the visitor&#39;s IP and country your proxy forwards. Only on reading or updating one site. | [optional] |
| **status** | **String** | The last check of the path. &#x60;verified&#x60;: it serves the tag, signed, so cookies keep their full life in Safari. &#x60;unsigned&#x60;: it reaches Zernio without a valid signature, so no cookies are set. &#x60;unreachable&#x60;: it does not serve the tag. &#x60;unchecked&#x60;: the path or key changed since. | [optional] |
| **checked_at** | **Time** |  | [optional] |
| **google_tags** | [**Array&lt;TrackingSiteProxyGoogleTagsInner&gt;**](TrackingSiteProxyGoogleTagsInner.md) | The loader of each of &#x60;googleTagIds&#x60; on the site&#39;s own domain. Use &#x60;src&#x60; in place of the tag&#39;s googletagmanager.com address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingSiteProxy.new(
  path: null,
  secret: null,
  status: null,
  checked_at: null,
  google_tags: null
)
```

