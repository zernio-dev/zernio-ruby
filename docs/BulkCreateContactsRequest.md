# Zernio::BulkCreateContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Required when contacts carry channel data (platformIdentifier or a row-level accountId). Omit for a plain CRM import with no channels. | [optional] |
| **platform** | **String** | Ignored when accountId is set: the platform is derived from the resolved account. Only relevant to disambiguate accountId lookup; a mismatch 404s. | [optional] |
| **contacts** | [**Array&lt;BulkCreateContactsRequestContactsInner&gt;**](BulkCreateContactsRequestContactsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkCreateContactsRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  contacts: null
)
```

