# Zernio::BrandedCallingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **job_title** | **String** | Required on organizationContact. | [optional] |
| **phone_number** | **String** | E.164 with a leading +. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingContact.new(
  first_name: null,
  last_name: null,
  email: null,
  job_title: null,
  phone_number: null
)
```

