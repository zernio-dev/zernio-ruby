# Zernio::GetCurrentUser200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** | Only returned to a dashboard session. Omitted for API keys. | [optional] |
| **image** | **String** |  | [optional] |
| **role** | **String** | One of owner, admin, billing_admin, member or viewer. Always owner when isRoot is true. | [optional] |
| **is_root** | **Boolean** | True when the user owns the account, false when they were invited to it. | [optional] |
| **invited_by** | **String** | Id of the user who invited this user. Null when isRoot is true. | [optional] |
| **invited_to_profile** | **String** | Only present when isRoot is false. | [optional] |
| **invited_to_profiles** | **Array&lt;String&gt;** | Ids of the profiles an invited user is limited to. Empty means every profile. Only present when isRoot is false. | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups turned off for an invited user. Null or empty means none. Only present when isRoot is false. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_login_at** | **Time** | Last sign-in, stamped at most once an hour. Null when no sign-in has been recorded. | [optional] |
| **workspace_id** | **String** | Id of the workspace the credential acts in. Null when the user has no workspace yet. | [optional] |
| **workspace_name** | **String** | Name of that workspace. Null when workspaceId is null. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCurrentUser200Response.new(
  _id: null,
  name: null,
  email: null,
  image: null,
  role: null,
  is_root: null,
  invited_by: null,
  invited_to_profile: null,
  invited_to_profiles: null,
  disabled_resource_groups: null,
  created_at: null,
  last_login_at: null,
  workspace_id: null,
  workspace_name: null
)
```

