# Zernio::GetAdMedia200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  | [optional] |
| **platform** | **String** | &#39;facebook&#39; or &#39;instagram&#39; — only Meta is supported for now. | [optional] |
| **media** | [**Array&lt;GetAdMedia200ResponseMediaInner&gt;**](GetAdMedia200ResponseMediaInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdMedia200Response.new(
  ad_id: null,
  platform: null,
  media: null
)
```

