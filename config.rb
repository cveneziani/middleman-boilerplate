::Sass.load_paths << File.join(root, "node_modules")

set :css_dir,     'assets/stylesheets'
set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/images'
set :js_dir,      'assets/js'

page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

configure :build do
  activate :asset_hash
end
