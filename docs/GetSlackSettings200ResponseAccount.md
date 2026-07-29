# Zernio::GetSlackSettings200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **channel_id** | **String** |  | [optional] |
| **channel_name** | **String** |  | [optional] |
| **channel_type** | **String** | public or private | [optional] |
| **team_id** | **String** |  | [optional] |
| **team_name** | **String** |  | [optional] |
| **default_username** | **String** |  | [optional] |
| **default_icon_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSlackSettings200ResponseAccount.new(
  _id: null,
  platform: slack,
  display_name: null,
  channel_id: null,
  channel_name: null,
  channel_type: null,
  team_id: null,
  team_name: null,
  default_username: null,
  default_icon_url: null
)
```

