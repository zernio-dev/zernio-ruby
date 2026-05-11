# Zernio::TrackingTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native tag id. Meta: numeric pixel id, as a string. |  |
| **name** | **String** |  |  |
| **platform** | **String** |  |  |
| **kind** | **String** | Platform-native flavor of the tag (Meta: &#x60;pixel&#x60;). |  |
| **status** | **String** | &#x60;inactive&#x60; when the platform reports the tag as broken/unavailable. |  |
| **code** | **String** | The base-code &#x60;&lt;script&gt;&#x60; snippet to install on the site. Meta only; populated by &#x60;getTrackingTag&#x60;, omitted from the list view.  | [optional] |
| **last_fired_time** | **Integer** | Unix seconds of the last event the tag received, or &#x60;null&#x60; if it never fired. The practical \&quot;is it installed and working\&quot; signal.  | [optional] |
| **is_unavailable** | **Boolean** | Whether the tag is in a broken/unavailable state (Meta &#x60;is_unavailable&#x60;). | [optional] |
| **installed** | **Boolean** | Convenience flag derived from &#x60;lastFiredTime&#x60; — has the tag ever fired. | [optional] |
| **creation_time** | **Integer** | Unix seconds the tag was created. | [optional] |
| **owner_business_id** | **String** | Business Manager id that owns the tag, or &#x60;null&#x60; when the tag lives on a personal (non-BM) ad account — such tags can&#39;t be shared with other ad accounts.  | [optional] |
| **owner_ad_account_id** | **String** | Ad account id (&#x60;act_...&#x60;) that owns the tag, when reported. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTag.new(
  id: null,
  name: null,
  platform: null,
  kind: null,
  status: null,
  code: null,
  last_fired_time: null,
  is_unavailable: null,
  installed: null,
  creation_time: null,
  owner_business_id: null,
  owner_ad_account_id: null
)
```

