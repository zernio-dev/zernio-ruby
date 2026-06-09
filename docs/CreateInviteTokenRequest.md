# Zernio::CreateInviteTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** | &#39;all&#39; grants access to all profiles, &#39;profiles&#39; restricts to specific profiles |  |
| **profile_ids** | **Array&lt;String&gt;** | Required if scope is &#39;profiles&#39;. Array of profile IDs to grant access to. | [optional] |
| **role** | **String** | Org role granted to the invitee. Defaults to &#39;member&#39;. | [optional][default to &#39;member&#39;] |
| **read_only** | **Boolean** | When true, the invitee can view everything in their profile scope but cannot perform any content mutation (publish, edit, delete, connect accounts). | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInviteTokenRequest.new(
  scope: null,
  profile_ids: null,
  role: null,
  read_only: null
)
```

