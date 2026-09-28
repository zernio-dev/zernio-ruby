# Zernio::RcsBrandInputContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **title** | **String** |  | [optional] |
| **email** | **String** | A personal address on the company domain; free-mail and group addresses (info@, support@) are rejected by the carriers. |  |
| **phone** | **String** | E.164 |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsBrandInputContact.new(
  first_name: null,
  last_name: null,
  title: null,
  email: null,
  phone: null
)
```

