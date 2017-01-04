::Sass.load_paths << File.join(root, "node_modules")

set :css_dir,     'assets/stylesheets'
set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/images'
set :js_dir,      'assets/javascripts'

activate :autoprefixer
activate :protect_emails

page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript
  activate :gzip

  activate :robots, rules:    [{ user_agent: '*', allow: %w(/) }],
                    sitemap:  "#{@app.data.site.url}/sitemap.xml"

  activate :sitemap, hostname: @app.data.site.url

  # Only when deploying to a gh-pages branch
  set :relative_links, true
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.deploy_method  = :git
  deploy.branch         = 'gh-pages'
  deploy.build_before   = true
end
