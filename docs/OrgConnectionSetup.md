# Zernio::OrgConnectionSetup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **dns_record** | [**OrgConnectionSetupDnsRecord**](OrgConnectionSetupDnsRecord.md) |  | [optional] |
| **admin_console_url** | **String** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **directory_scope** | **String** |  | [optional] |
| **admin_consent_url** | **String** |  | [optional] |
| **application_permissions** | **Array&lt;String&gt;** |  | [optional] |
| **steps** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OrgConnectionSetup.new(
  type: null,
  dns_record: null,
  admin_console_url: null,
  client_id: null,
  scopes: null,
  directory_scope: null,
  admin_consent_url: null,
  application_permissions: null,
  steps: null
)
```

