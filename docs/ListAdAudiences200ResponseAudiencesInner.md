# Zernio::ListAdAudiences200ResponseAudiencesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **platform_audience_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | Present (and the only meaningful payload) when &#x60;type&#x60; is &#x60;saved_targeting&#x60;. Null for uploaded/derived audience types. | [optional] |
| **platform** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAudiences200ResponseAudiencesInner.new(
  id: null,
  platform_audience_id: null,
  name: null,
  description: null,
  type: null,
  spec: null,
  platform: null,
  size: null,
  status: null
)
```

