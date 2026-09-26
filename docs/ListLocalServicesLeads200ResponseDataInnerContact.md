# Zernio::ListLocalServicesLeads200ResponseDataInnerContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consumer_name** | **String** |  | [optional] |
| **email** | **String** | Always null: Google Ads API v25 stopped returning the consumer email on Local Services leads. | [optional] |
| **phone_number** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLocalServicesLeads200ResponseDataInnerContact.new(
  consumer_name: null,
  email: null,
  phone_number: null
)
```

