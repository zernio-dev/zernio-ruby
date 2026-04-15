# Late::ConversionEventUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Plaintext email. Hashed server-side. | [optional] |
| **phone** | **String** | Phone number, ideally E.164. Hashed server-side. | [optional] |
| **first_name** | **String** | Plaintext first name. Hashed server-side. | [optional] |
| **last_name** | **String** | Plaintext last name. Hashed server-side. | [optional] |
| **external_id** | **String** | Stable customer identifier (e.g. CRM user ID). Hashed server-side. | [optional] |
| **ip_address** | **String** | Client IP address. Sent plaintext. | [optional] |
| **user_agent** | **String** | Client user-agent string. Sent plaintext. | [optional] |
| **country** | **String** | ISO 3166-1 alpha-2 country code, e.g. &#39;us&#39;. | [optional] |
| **click_ids** | [**ConversionEventUserClickIds**](ConversionEventUserClickIds.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ConversionEventUser.new(
  email: null,
  phone: null,
  first_name: null,
  last_name: null,
  external_id: null,
  ip_address: null,
  user_agent: null,
  country: null,
  click_ids: null
)
```

