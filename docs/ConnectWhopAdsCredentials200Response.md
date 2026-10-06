# Zernio::ConnectWhopAdsCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account id (platform &#x60;whopads&#x60;) to use as &#x60;{accountId}&#x60; on the tracking-tags routes. | [optional] |
| **whop_account_id** | **String** | The Whop account id (&#x60;biz_...&#x60;), which is also the tracking tag id. | [optional] |
| **account_name** | **String** |  | [optional] |
| **redirect_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhopAdsCredentials200Response.new(
  account_id: null,
  whop_account_id: null,
  account_name: null,
  redirect_url: null
)
```

