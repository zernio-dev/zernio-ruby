# Zernio::WebhookPayloadCallPermissionRequestPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Consumer wa_id who replied | [optional] |
| **response** | **String** |  | [optional] |
| **is_permanent** | **Boolean** |  | [optional] |
| **expiration_timestamp** | **Time** | Present only when temporary | [optional] |
| **response_source** | **String** | Meta&#39;s response source, typically &#x60;user_action&#x60; | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallPermissionRequestPermission.new(
  from: null,
  response: null,
  is_permanent: null,
  expiration_timestamp: null,
  response_source: null
)
```

