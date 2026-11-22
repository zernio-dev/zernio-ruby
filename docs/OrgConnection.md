# Zernio::OrgConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **areas** | **Array&lt;String&gt;** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **tenant_id** | **String** |  | [optional] |
| **admin_email** | **String** |  | [optional] |
| **allowed_emails** | **Array&lt;String&gt;** |  | [optional] |
| **last_error** | **String** |  | [optional] |
| **verified_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **setup** | [**OrgConnectionSetup**](OrgConnectionSetup.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OrgConnection.new(
  id: null,
  provider: null,
  status: null,
  profile_id: null,
  areas: null,
  domain: null,
  tenant_id: null,
  admin_email: null,
  allowed_emails: null,
  last_error: null,
  verified_at: null,
  created_at: null,
  setup: null
)
```

