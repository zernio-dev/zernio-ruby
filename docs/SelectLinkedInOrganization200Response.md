# Zernio::SelectLinkedInOrganization200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | The redirect URL with connection params appended (only if redirect_url was provided in request) | [optional] |
| **account** | [**SelectLinkedInOrganization200ResponseAccount**](SelectLinkedInOrganization200ResponseAccount.md) |  | [optional] |
| **accounts** | **Array&lt;Object&gt;** | selections only. The connected accounts, same shape as &#x60;account&#x60;. The redirect_url then carries &#x60;accountIds&#x60; (comma-separated) and &#x60;accountId&#x60; of the first. | [optional] |
| **failed** | [**Array&lt;SelectLinkedInOrganization200ResponseFailedInner&gt;**](SelectLinkedInOrganization200ResponseFailedInner.md) | selections only. The accounts that could not be connected while the others were. &#x60;id&#x60; is the organization URN or the member id, or &#x60;selections[i]&#x60; for an entry naming neither. | [optional] |
| **bulk_refresh** | [**SelectLinkedInOrganization200ResponseBulkRefresh**](SelectLinkedInOrganization200ResponseBulkRefresh.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectLinkedInOrganization200Response.new(
  message: null,
  redirect_url: null,
  account: null,
  accounts: null,
  failed: null,
  bulk_refresh: null
)
```

