module UrlsHelper
  def host_url(url)
    URI.join(data.site.url, url)
  end
end
