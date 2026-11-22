# Zernio::ConnectLineCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The Messaging API channel&#39;s Channel ID (digits only). |  |
| **channel_secret** | **String** | The Messaging API channel&#39;s Channel secret (32 hex characters). |  |
| **state** | **String** | Required state formatted as {userId}-{profileId}. Get userId from GET /v1/users and profileId from GET /v1/profiles. |  |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectLineCredentialsRequest.new(
  channel_id: null,
  channel_secret: null,
  state: 6507a1b2c3d4e5f6a7b8c9d0-6507a1b2c3d4e5f6a7b8c9d1,
  redirect_url: null
)
```

