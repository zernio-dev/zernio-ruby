# Zernio::GetGoogleBusinessVerifications200ResponseVerificationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Resource name, e.g. \&quot;locations/123/verifications/0T1776879124712\&quot;. The last segment is the verificationId. | [optional] |
| **method** | **String** | Method used (omitted on some entries). | [optional] |
| **state** | **String** |  | [optional] |
| **create_time** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessVerifications200ResponseVerificationsInner.new(
  name: null,
  method: null,
  state: null,
  create_time: null
)
```

