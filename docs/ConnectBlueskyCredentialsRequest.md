# Zernio::ConnectBlueskyCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Your Bluesky handle (e.g. user.bsky.social) or email address |  |
| **app_password** | **String** | App password generated from Bluesky Settings &gt; App Passwords |  |
| **state** | **String** | Required state formatted as {userId}-{profileId}. Get userId from GET /v1/users and profileId from GET /v1/profiles. |  |
| **redirect_url** | **String** | Optional URL to redirect to after successful connection. Used when the state carries no redirect (a state minted by GET /v1/connect/bluesky with redirect_url already carries one, and that one wins). | [optional] |
| **redirect_uri** | **String** | Alias of redirect_url, kept for existing callers | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectBlueskyCredentialsRequest.new(
  identifier: null,
  app_password: null,
  state: 6507a1b2c3d4e5f6a7b8c9d0-6507a1b2c3d4e5f6a7b8c9d1,
  redirect_url: null,
  redirect_uri: null
)
```

