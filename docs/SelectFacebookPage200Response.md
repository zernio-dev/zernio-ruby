# Zernio::SelectFacebookPage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Redirect URL when a custom redirect_url was provided or a business Page was selected. On an ads connect it also carries &#x60;adsAccountId&#x60;. | [optional] |
| **ads_account_id** | **String** | Ads connect only (the redirect_url carries adsConnect&#x3D;true, as it does after GET /v1/connect/{platform}/ads). The metaads SocialAccount ID to use with the /v1/ads endpoints. &#x60;account.accountId&#x60; is the Facebook posting account. Absent when the ads account could not be created. | [optional] |
| **account** | [**SelectFacebookPage200ResponseAccount**](SelectFacebookPage200ResponseAccount.md) |  | [optional] |
| **accounts** | **Array&lt;Object&gt;** | pageIds only. The connected accounts, same shape as &#x60;account&#x60;. The redirect_url then carries &#x60;accountIds&#x60; (comma-separated) and &#x60;accountId&#x60; of the first. | [optional] |
| **failed** | [**Array&lt;SelectFacebookPage200ResponseFailedInner&gt;**](SelectFacebookPage200ResponseFailedInner.md) | pageIds only. The Pages that could not be connected while the others were. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectFacebookPage200Response.new(
  message: null,
  redirect_url: null,
  ads_account_id: null,
  account: null,
  accounts: null,
  failed: null
)
```

