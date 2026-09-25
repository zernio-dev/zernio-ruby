# Zernio::SelectFacebookPage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Redirect URL when a custom redirect_url was provided or a business Page was selected. On an ads connect it also carries &#x60;adsAccountId&#x60;. | [optional] |
| **ads_account_id** | **String** | Ads connect only (the redirect_url carries adsConnect&#x3D;true, as it does after GET /v1/connect/{platform}/ads). The metaads SocialAccount ID to use with the /v1/ads endpoints. &#x60;account.accountId&#x60; is the Facebook posting account. Absent when the ads account could not be created. | [optional] |
| **account** | [**SelectFacebookPage200ResponseAccount**](SelectFacebookPage200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectFacebookPage200Response.new(
  message: null,
  redirect_url: null,
  ads_account_id: null,
  account: null
)
```

