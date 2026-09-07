# Zernio::ListConversionActions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The Google Ads customer id the actions were read from. | [optional] |
| **actions** | [**Array&lt;ConversionAction&gt;**](ConversionAction.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListConversionActions200Response.new(
  customer_id: null,
  actions: null
)
```

