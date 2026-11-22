# Zernio::ConnectWechatCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The Official Account&#39;s AppID (starts with wx). |  |
| **app_secret** | **String** | The Official Account&#39;s AppSecret (32 characters). |  |
| **state** | **String** | Required state formatted as {userId}-{profileId}. Get userId from GET /v1/users and profileId from GET /v1/profiles. |  |
| **display_name** | **String** | Name to show for the account. Defaults to \&quot;WeChat Official Account\&quot;. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWechatCredentialsRequest.new(
  app_id: null,
  app_secret: null,
  state: 6507a1b2c3d4e5f6a7b8c9d0-6507a1b2c3d4e5f6a7b8c9d1,
  display_name: null,
  redirect_url: null
)
```

