# Zernio::ConnectAppLovinAdsCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **event_key** | **String** | Present when the request sent the conversion keys. | [optional] |
| **axon_account_id** | **String** | The AppLovin account id. Present when the request sent the Campaign Management keys. | [optional] |
| **account_name** | **String** |  | [optional] |
| **redirect_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectAppLovinAdsCredentials200Response.new(
  account_id: null,
  event_key: null,
  axon_account_id: null,
  account_name: null,
  redirect_url: null
)
```

