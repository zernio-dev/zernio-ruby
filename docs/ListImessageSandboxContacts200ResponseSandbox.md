# Zernio::ListImessageSandboxContacts200ResponseSandbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Use as accountId to reply from the sandbox line | [optional] |
| **handle** | **String** | The sandbox line to message | [optional] |
| **contact_limit** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListImessageSandboxContacts200ResponseSandbox.new(
  account_id: null,
  handle: null,
  contact_limit: null
)
```

