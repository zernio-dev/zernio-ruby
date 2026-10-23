# Zernio::RemoveUsersFromAdAudience200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **num_received** | **Integer** | Rows Meta received. | [optional] |
| **num_invalid** | **Integer** | Rows Meta could not read. | [optional] |
| **invalid_entry_samples** | **Hash&lt;String, String&gt;** | A sample of the rows Meta could not read, passed through as Meta returns it. Empty when every row was valid. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveUsersFromAdAudience200Response.new(
  message: null,
  num_received: null,
  num_invalid: null,
  invalid_entry_samples: null
)
```

