# Zernio::OAuthApp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pass it as &#x60;oauthAppId&#x60; on GET /v1/connect/{platform} to connect through this app. |  |
| **platform** | **String** | The platform the app belongs to, as in GET /v1/connect/{platform}. |  |
| **label** | **String** |  |  |
| **client_id** | **String** | The client ID (or app ID) of your app on the platform. The secret is never returned. |  |
| **scope_areas** | **Array&lt;String&gt;** | The permission areas every connect through this app requests. Pick only what your app is approved for on the platform. |  |
| **status** | **String** | &#x60;ok&#x60;: the platform accepted the keys at the last check. &#x60;unchecked&#x60;: the check could not reach a verdict (see lastError). &#x60;invalid&#x60;: the platform rejected the keys; connects and token refreshes through this app will fail until the secret is rotated. |  |
| **last_checked_at** | **Time** |  | [optional] |
| **last_error** | **String** |  | [optional] |
| **account_count** | **Integer** | Connected accounts currently running on this app. |  |
| **redirect_uri** | **String** | The OAuth redirect URI to allow in your app&#39;s settings on the platform. |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OAuthApp.new(
  id: null,
  platform: null,
  label: null,
  client_id: null,
  scope_areas: null,
  status: null,
  last_checked_at: null,
  last_error: null,
  account_count: null,
  redirect_uri: null,
  created_at: null
)
```

