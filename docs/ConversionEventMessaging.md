# Zernio::ConversionEventMessaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** |  |  |
| **waba_id** | **String** | WhatsApp only. WhatsApp Business Account id, sent as &#x60;whatsapp_business_account_id&#x60;. | [optional] |
| **ctwa_clid** | **String** | WhatsApp only. Click-to-WhatsApp click id from the first inbound message referral, sent as &#x60;ctwa_clid&#x60;. | [optional] |
| **page_id** | **String** | Messenger: Facebook Page id, sent as &#x60;page_id&#x60;. Instagram Direct: when &#x60;instagramBusinessAccountId&#x60; is absent, Zernio reads the Instagram professional account linked to this Page and sends its id as &#x60;instagram_business_account_id&#x60;; if none is linked or the lookup fails, &#x60;page_id&#x60; is sent instead. | [optional] |
| **instagram_business_account_id** | **String** | Instagram Direct only. Instagram professional account id (&#x60;instagram_business_account&#x60; on the Page), sent as &#x60;instagram_business_account_id&#x60; next to &#x60;ig_sid&#x60;. | [optional] |
| **page_scoped_user_id** | **String** | Messenger only. The page-scoped user id (PSID) your Messenger webhook gives for the person, sent as &#x60;page_scoped_user_id&#x60; next to &#x60;page_id&#x60;. | [optional] |
| **instagram_scoped_user_id** | **String** | Instagram Direct only. The Instagram-scoped user id (IGSID) your Instagram messaging webhook gives for the person, sent as &#x60;ig_sid&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionEventMessaging.new(
  channel: null,
  waba_id: null,
  ctwa_clid: null,
  page_id: null,
  instagram_business_account_id: null,
  page_scoped_user_id: null,
  instagram_scoped_user_id: null
)
```

