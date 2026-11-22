# Zernio::CreateGoogleOrgConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **domain** | **String** | The Workspace domain the admin delegates. |  |
| **scopes** | **Array&lt;String&gt;** | Areas the mailboxes get, the same as a user connect. |  |
| **admin_email** | **String** | A super admin, used to list the domain&#39;s users. | [optional] |
| **allowed_emails** | **Array&lt;String&gt;** | Addresses or &#x60;@domain&#x60; entries mailboxes must match. Omit for every mailbox. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleOrgConnectionRequest.new(
  profile_id: null,
  domain: acme.com,
  scopes: null,
  admin_email: null,
  allowed_emails: null
)
```

