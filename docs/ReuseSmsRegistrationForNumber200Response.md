# Zernio::ReuseSmsRegistrationForNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_id** | **String** |  | [optional] |
| **status** | **String** | requested/changes_requested &#x3D; pre-submission review states; customers see them as pending / needs changes. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReuseSmsRegistrationForNumber200Response.new(
  registration_id: null,
  status: null
)
```

