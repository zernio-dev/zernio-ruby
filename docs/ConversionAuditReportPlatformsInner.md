# Zernio::ConversionAuditReportPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Stable platform key (meta, google, tiktok, ...). |  |
| **name** | **String** | Human-readable platform name. |  |
| **browser_pixel** | **Boolean** | Whether a browser pixel for this platform was found. |  |
| **server_side** | **Boolean** | True only when a server-side path is proven: visible from the page, or verified through the Zernio account behind the site tag. |  |
| **relayed_by** | **String** | The only server path seen is the Zernio site tag relay; &#x60;serverSideVerified&#x60; says whether its delivery to this platform is proven. | [optional] |
| **loaded_by** | **String** | On a scan that read the page source only: the pixel comes from the Zernio site tag&#39;s settings, which load it after consent, not from the page. Its ids are not reported. | [optional] |
| **server_side_verified** | **Boolean** | The Zernio site tag on the page belongs to an account whose destination for this platform accepted the site&#39;s events in the last 7 days. | [optional] |
| **server_tool** | **String** | A third-party server-side tool installed on the site that may already send this platform&#39;s events (Elevar, Littledata, Stape), when its status is &#x60;likely&#x60;. Which platforms the tool feeds is not visible from the page. | [optional] |
| **status** | **String** | &#x60;good&#x60;: server-side. &#x60;warn&#x60;: browser-only (the leak). &#x60;missing&#x60;: not tracked. &#x60;not-firing&#x60;: installed but sent nothing during a full visit. &#x60;configured&#x60;: only in a Google Tag Manager container and not seen firing on a visit where silence proves nothing, so not counted as tracked. |  |
| **estimated_loss_browser_only** | **Float** | Share of conversions typically lost when this platform runs browser-only, 0-1. |  |
| **note** | **String** | Short explanation of the finding. |  |
| **ids** | **Array&lt;String&gt;** | Pixel or tag ids found for this platform. | [optional] |
| **events** | **Array&lt;String&gt;** | Standard events called in the page or its tag-manager containers. | [optional] |
| **fix_steps** | **Array&lt;String&gt;** | Steps to fix this platform&#39;s tracking. | [optional] |
| **fired** | **String** | Rendered scans: &#x60;after-consent&#x60; when the pixel fired only once the scan accepted the cookie banner. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportPlatformsInner.new(
  key: null,
  name: null,
  browser_pixel: null,
  server_side: null,
  relayed_by: null,
  loaded_by: null,
  server_side_verified: null,
  server_tool: null,
  status: null,
  estimated_loss_browser_only: null,
  note: null,
  ids: null,
  events: null,
  fix_steps: null,
  fired: null
)
```

