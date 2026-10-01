# Zernio::ApiChangelogEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable entry id; the same entry is never published twice. |  |
| **type** | **String** |  |  |
| **platforms** | **Array&lt;String&gt;** | Platform and area slugs the entry is about: a platform (&#x60;instagram&#x60;, &#x60;facebook&#x60;, &#x60;threads&#x60;, &#x60;tiktok&#x60;, &#x60;x&#x60;, &#x60;linkedin&#x60;, &#x60;youtube&#x60;, &#x60;pinterest&#x60;, &#x60;reddit&#x60;, &#x60;bluesky&#x60;, &#x60;telegram&#x60;, &#x60;snapchat&#x60;, &#x60;whatsapp&#x60;, &#x60;discord&#x60;, &#x60;slack&#x60;, &#x60;google-business&#x60;, &#x60;imessage&#x60;), an ads platform (&#x60;meta-ads&#x60;, &#x60;google-ads&#x60;, &#x60;tiktok-ads&#x60;, &#x60;linkedin-ads&#x60;, &#x60;pinterest-ads&#x60;, &#x60;x-ads&#x60;) or an area (&#x60;ads&#x60;, &#x60;publishing&#x60;, &#x60;inbox&#x60;, &#x60;telephony&#x60;, &#x60;commerce&#x60;, &#x60;analytics&#x60;, &#x60;webhooks&#x60;, &#x60;general&#x60;). Filter with the &#x60;platform&#x60; query parameter. |  |
| **message** | **String** | The announcement, in Markdown. |  |
| **published_at** | **Time** |  |  |
| **spec_version** | **String** | The &#x60;info.version&#x60; of the OpenAPI spec the entry describes, when known. |  |
| **url** | **String** | The entry on the docs changelog. |  |
| **changes** | [**ApiChangelogEntryChanges**](ApiChangelogEntryChanges.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ApiChangelogEntry.new(
  id: null,
  type: null,
  platforms: [whatsapp, inbox],
  message: null,
  published_at: null,
  spec_version: null,
  url: null,
  changes: null
)
```

