# Zernio::BrandedCallingReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full_name** | **String** |  |  |
| **job_title** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **relationship_to_registrant** | **String** |  | [optional] |
| **phone_number** | **String** | E.164 with a leading +. |  |
| **email** | **String** |  |  |
| **timezone** | **String** | IANA timezone id, e.g. America/New_York. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingReference.new(
  full_name: null,
  job_title: null,
  organization: null,
  relationship_to_registrant: null,
  phone_number: null,
  email: null,
  timezone: null
)
```

