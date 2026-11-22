# Zernio::CreateWorkspaceRequestApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **permission** | **String** |  | [optional][default to &#39;read-write&#39;] |
| **expires_in** | **Integer** | Days until expiry. | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWorkspaceRequestApiKey.new(
  name: null,
  permission: null,
  expires_in: null,
  disabled_resource_groups: null
)
```

