# Zernio::GetWhatsAppSdkConfig200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Meta app id for FB.init |  |
| **config_id** | **String** | Embedded Signup configuration id for the config_id option of FB.login |  |
| **graph_api_version** | **String** | Graph API version to pass to FB.init (for example v22.0) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppSdkConfig200Response.new(
  app_id: null,
  config_id: null,
  graph_api_version: v22.0
)
```

