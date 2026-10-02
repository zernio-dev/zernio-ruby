# Zernio::SelectGoogleBusinessLocation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Redirect URL if custom redirect_url was provided | [optional] |
| **account** | [**SelectGoogleBusinessLocation200ResponseAccount**](SelectGoogleBusinessLocation200ResponseAccount.md) |  | [optional] |
| **accounts** | **Array&lt;Object&gt;** | locations with two or more distinct entries only. The connected accounts, same shape as &#x60;account&#x60;. The redirect_url then carries &#x60;accountIds&#x60; (comma-separated) and &#x60;accountId&#x60; of the first. | [optional] |
| **failed** | [**Array&lt;SelectGoogleBusinessLocation200ResponseFailedInner&gt;**](SelectGoogleBusinessLocation200ResponseFailedInner.md) | locations only. The locations that could not be connected while the others were. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectGoogleBusinessLocation200Response.new(
  message: null,
  redirect_url: null,
  account: null,
  accounts: null,
  failed: null
)
```

