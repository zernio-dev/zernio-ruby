# Zernio::ConversionEventUserClickIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fbc** | **String** | Meta click ID (from fbclid URL param). | [optional] |
| **fbp** | **String** | Meta browser ID (_fbp cookie). | [optional] |
| **gclid** | **String** | Google click ID (from gclid URL param). | [optional] |
| **gbraid** | **String** | Google iOS 14.5+ app attribution ID. | [optional] |
| **wbraid** | **String** | Google iOS 14.5+ web-to-app attribution ID. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionEventUserClickIds.new(
  fbc: null,
  fbp: null,
  gclid: null,
  gbraid: null,
  wbraid: null
)
```

