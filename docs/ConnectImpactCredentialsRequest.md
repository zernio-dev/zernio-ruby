# Zernio::ConnectImpactCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_sid** | **String** | Account SID, starting with IR. |  |
| **auth_token** | **String** | Auth Token of the same access token. |  |
| **program_id** | **String** | Numeric program (campaign) id. |  |
| **event_type_id** | **String** | Numeric event type id (ActionTrackerId), from Settings, Event Types. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectImpactCredentialsRequest.new(
  account_sid: null,
  auth_token: null,
  program_id: null,
  event_type_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

