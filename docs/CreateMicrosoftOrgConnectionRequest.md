# Zernio::CreateMicrosoftOrgConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **allowed_emails** | **Array&lt;String&gt;** | Addresses or &#x60;@domain&#x60; entries mailboxes must match. Omit for every mailbox. | [optional] |
| **redirect_url** | **String** | Where Microsoft sends the administrator after consent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateMicrosoftOrgConnectionRequest.new(
  profile_id: null,
  scopes: null,
  allowed_emails: null,
  redirect_url: null
)
```

