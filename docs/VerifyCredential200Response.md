# Zernio::VerifyCredential200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **name** | **String** | Display name of the credential&#39;s owner. | [optional] |
| **email** | **String** | Email of the credential&#39;s owner. | [optional] |
| **auth_type** | **String** |  | [optional] |
| **scope** | **String** | Granted OAuth scopes, space-separated. Null for API keys. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::VerifyCredential200Response.new(
  valid: null,
  user_id: null,
  name: null,
  email: null,
  auth_type: null,
  scope: null
)
```

