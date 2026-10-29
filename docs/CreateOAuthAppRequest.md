# Zernio::CreateOAuthAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | One of the platforms listed in &#x60;platforms&#x60; of GET /v1/connect/oauth-apps. |  |
| **label** | **String** |  |  |
| **client_id** | **String** |  |  |
| **client_secret** | **String** |  |  |
| **slack_signing_secret** | **String** | Slack only: the signing secret from the app&#39;s Basic Information page. Needed to receive events from your Slack app; any other platform is a 400. | [optional] |
| **scope_areas** | **Array&lt;String&gt;** | Areas this app requests. Defaults to every area the platform supports; an area the platform cannot request separately is a 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateOAuthAppRequest.new(
  platform: null,
  label: null,
  client_id: null,
  client_secret: null,
  slack_signing_secret: null,
  scope_areas: null
)
```

