# Zernio::ListSipTrunks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trunks** | [**Array&lt;ListSipTrunks200ResponseTrunksInner&gt;**](ListSipTrunks200ResponseTrunksInner.md) |  | [optional] |
| **enabled** | **Boolean** | Whether this workspace can create SIP trunks. Managing existing trunks always works. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSipTrunks200Response.new(
  trunks: null,
  enabled: null
)
```

