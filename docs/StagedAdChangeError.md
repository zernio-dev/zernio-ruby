# Zernio::StagedAdChangeError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An error code, or &#x60;target_changed&#x60; when the object changed on the ad network after staging. | [optional] |
| **message** | **String** |  | [optional] |
| **details** | **Hash&lt;String, Object&gt;** | Creates only. What the failed create reported, such as objects it had already made on the ad network. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeError.new(
  code: null,
  message: null,
  details: null
)
```

