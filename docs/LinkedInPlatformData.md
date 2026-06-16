# Zernio::LinkedInPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_title** | **String** | Title displayed on LinkedIn document (PDF/carousel) posts. Required by LinkedIn for document posts. If omitted, falls back to the media item title, then the filename. | [optional] |
| **organization_urn** | **String** | Target LinkedIn Organization URN (e.g. \&quot;urn:li:organization:123456789\&quot;). If omitted, uses the default org. Use GET /v1/accounts/{id}/linkedin-organizations to list orgs. | [optional] |
| **first_comment** | **String** | Optional first comment to add after the post is created | [optional] |
| **disable_link_preview** | **Boolean** | Set to true to disable automatic link previews for URLs in the post content (default is false) | [optional] |
| **reshare_url** | **String** | LinkedIn post link to repost (use the post&#39;s \&quot;Copy link to post\&quot; action), or a urn:li:share / urn:li:ugcPost / urn:li:groupPost URN. The published post becomes a quote-reshare: your content is shown as the commentary and the original post is embedded underneath (LinkedIn&#39;s \&quot;repost with your thoughts\&quot;). Mutually exclusive with media. Works on personal profiles and organization pages. | [optional] |
| **geo_restriction** | [**GeoRestriction**](GeoRestriction.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInPlatformData.new(
  document_title: null,
  organization_urn: null,
  first_comment: null,
  disable_link_preview: null,
  reshare_url: null,
  geo_restriction: null
)
```

