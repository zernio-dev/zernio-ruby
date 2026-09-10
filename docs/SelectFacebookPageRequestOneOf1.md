# Zernio::SelectFacebookPageRequestOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selection_token** | **String** | Encrypted dashboard business-login grant. Expires after ten minutes. |  |
| **page_id** | **String** | A Page ID from the granted Pages returned by listFacebookPages. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectFacebookPageRequestOneOf1.new(
  selection_token: ENCRYPTED_SELECTION_TOKEN,
  page_id: null
)
```

