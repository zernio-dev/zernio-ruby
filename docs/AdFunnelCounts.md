# Zernio::AdFunnelCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **landing_page_views** | **Integer** | Landing page views: the visitor actually loaded the destination, unlike a link click. Meta &#x60;landing_page_view&#x60;. | [optional] |
| **content_views** | **Integer** | Content views (Meta &#x60;ViewContent&#x60; pixel event). | [optional] |
| **searches** | **Integer** | On-site searches (Meta &#x60;Search&#x60; pixel event). | [optional] |
| **wishlist_adds** | **Integer** | Adds to wishlist (Meta &#x60;AddToWishlist&#x60; pixel event). | [optional] |
| **cart_adds** | **Integer** | Adds to cart (Meta &#x60;AddToCart&#x60; pixel event). | [optional] |
| **checkouts_initiated** | **Integer** | Checkouts started (Meta &#x60;InitiateCheckout&#x60; pixel event). | [optional] |
| **payment_info_adds** | **Integer** | Payment details added at checkout (Meta &#x60;AddPaymentInfo&#x60; pixel event). | [optional] |
| **purchases** | **Integer** | Purchases. Pair with &#x60;purchaseValue&#x60; for revenue.  **Meta** reports one purchase under several action types, so this takes the FIRST present, in this order, never a sum: &#x60;offsite_conversion.fb_pixel_purchase&#x60;, &#x60;omni_purchase&#x60;, &#x60;app_custom_event.fb_mobile_purchase&#x60;, &#x60;onsite_conversion.purchase&#x60;, &#x60;purchase&#x60;.  It always counts purchases, whatever the ad set optimizes for. &#x60;conversions&#x60; instead follows the ad set&#39;s optimization event (PURCHASE when none is named), so the two can differ on any other goal.  **TikTok:** app purchases (&#x60;purchase&#x60;), else website complete payments (&#x60;complete_payment&#x60;), else Place an Order (&#x60;place_order&#x60;).  | [optional] |
| **leads** | **Integer** | Leads, from either the website pixel or an instant form, whichever the ad uses. | [optional] |
| **registrations_completed** | **Integer** | Completed registrations (Meta &#x60;CompleteRegistration&#x60; pixel event). | [optional] |
| **app_installs** | **Integer** | Mobile app installs attributed to the ad. | [optional] |
| **messaging_conversations_started** | **Integer** | Messaging conversations started within 7 days, the headline metric for click-to-WhatsApp and click-to-Messenger ads. | [optional] |
| **messaging_first_replies** | **Integer** | Messaging threads where the person sent a first reply. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdFunnelCounts.new(
  landing_page_views: null,
  content_views: null,
  searches: null,
  wishlist_adds: null,
  cart_adds: null,
  checkouts_initiated: null,
  payment_info_adds: null,
  purchases: null,
  leads: null,
  registrations_completed: null,
  app_installs: null,
  messaging_conversations_started: null,
  messaging_first_replies: null
)
```

