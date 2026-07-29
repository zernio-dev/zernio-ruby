# Zernio::SlackPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_ts** | **String** | Parent message ts to post this message as a thread reply (e.g. \&quot;1503435956.000247\&quot;). | [optional] |
| **unfurl_links** | **Boolean** | Expand links in the message into preview cards. Default true. | [optional] |
| **unfurl_media** | **Boolean** | Expand media links into inline previews. Default true. | [optional] |
| **username** | **String** | Override the bot display name for this message only (requires no setup; shown with an APP badge). Does not change the app identity in the sidebar. | [optional] |
| **icon_url** | **String** | Override the bot avatar image URL for this message only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SlackPlatformData.new(
  thread_ts: null,
  unfurl_links: null,
  unfurl_media: null,
  username: null,
  icon_url: null
)
```

