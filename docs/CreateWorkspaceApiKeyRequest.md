# Zernio::CreateWorkspaceApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **permission** | **String** | &#39;read&#39; restricts the key to GET requests. | [optional][default to &#39;read-write&#39;] |
| **expires_in** | **Integer** | Days until expiry. Omit for a key that never expires. | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups the key cannot use, as on &#x60;POST /v1/api-keys&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWorkspaceApiKeyRequest.new(
  name: null,
  permission: null,
  expires_in: null,
  disabled_resource_groups: null
)
```

