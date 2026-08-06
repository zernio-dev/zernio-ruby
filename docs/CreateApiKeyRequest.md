# Zernio::CreateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **expires_in** | **Integer** | Days until expiry | [optional] |
| **scope** | **String** | &#39;full&#39; grants access to all profiles (default), &#39;profiles&#39; restricts to specific profiles | [optional][default to &#39;full&#39;] |
| **profile_ids** | **Array&lt;String&gt;** | Profile IDs this key can access. Required when scope is &#39;profiles&#39;. | [optional] |
| **permission** | **String** | &#39;read-write&#39; allows all operations (default), &#39;read&#39; restricts to GET requests only | [optional][default to &#39;read-write&#39;] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups to DISABLE on this key (opt-out denylist). Omit for a legacy full-access key. A key with any group disabled mints with the zrk_ prefix, gets 403 with code&#x3D;insufficient_permissions and required_group on operations in disabled groups (each operation&#39;s group is published as x-resource-group), and can never manage API keys, invites, or member identity. With &#39;messages&#39; disabled, the KEY cannot access private messages; the ACCOUNT&#39;s pre-existing webhook subscriptions are a separate grant surface. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateApiKeyRequest.new(
  name: null,
  expires_in: null,
  scope: null,
  profile_ids: null,
  permission: null,
  disabled_resource_groups: null
)
```

