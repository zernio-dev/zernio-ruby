# Zernio::GohighlevelFunnelTrackingVerified

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional] |
| **result** | **String** | &#x60;tag&#x60;: the page carries the tag. &#x60;tag-manager&#x60;: Google Tag Manager loads on the page, so the tag may come through it. &#x60;missing&#x60;: not on the page. &#x60;unreachable&#x60;: the page did not load. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelFunnelTrackingVerified.new(
  url: null,
  result: null
)
```

