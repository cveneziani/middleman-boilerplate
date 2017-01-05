[![Middleman Boilerplate Banner](source/assets/images/banner-meta.jpg)](https://cveneziani.github.io/middleman-boilerplate/)

# Middleman Boilerplate

This is a boilerplate for [Middleman 4](http://middlemanapp.com/).

## What's included?

### Tooling

- [Slim](http://slim-lang.org/) for templating
- [Sass](http://sass-guidelin.es/) for CSS
- [Yarn](https://yarnpkg.com/) for [Node modules](http://npmjs.com/)

### Middleman plugins

- [Autoprefixer](https://github.com/middleman/middleman-autoprefixer)
- [Compass](http://compass-style.org/)
- [Minify HTML](https://github.com/middleman/middleman-minify-html)
- [Protect emails](https://github.com/amsardesai/middleman-protect-emails)
- [Robots](https://rubygems.org/gems/middleman-robots)
- [Sitemap](https://rubygems.org/gems/middleman-sitemap)
- [Deploy](https://rubygems.org/gems/middleman-deploy)

### Front-end components

- [Foundation Sites](http://foundation.zurb.com/sites/docs/), the front-end framework

## Dependencies

You need to install the following tools in order to install and use this boilerplate.

- [Bundler](http://bundler.io/)
- [Yarn](https://yarnpkg.com/)

## Installation

```bash
$ bundle install
$ yarn install
```

## Usage

```bash
$ middleman [server]  # run a local development server
$ middleman build     # build the static files
$ middleman deploy    # deploy the built site
```

## Achitecture

```
boilerplate/
  ├── data/
  │    └── site.yml
  │    └── ...
  ├── helpers/
  │    └── ...
  ├── node_modules/
  │    └── ...
  ├── source/
  │   ├── assets/
  │         └── fonts/
  │         └── images/
  │         └── javascripts/
  │         └── stylesheets/
  │   └── about.html.slim
  │   └── index.html.slim
  │   └── ...
```

## Where to start?

### Settings

You'll find the main settings of your website in `data/site.yml`.
This is where you'll set your website **name**, **baseline**, **url**, **author name**, etc.

### Pages

Three pages are already provided for you:

- **Home:** source/index.html.slim
- **About:** source/about.html.slim
- **Page not found:** source/404.html.slim

Feel free to edit the home page and/or remove the about page.

### Images

Four images are provided:

- `logo.jpg` mainly used as favicon
- `banner-meta.jpg` used for meta tag cards
- and the other ones are used on homepage & 404 page

Again, feel free to change or remove them.

*Hint:* Have a look at the homepage template to see how to inline SVG images.

### Stylesheets

Have a look at `source/assets/stylesheets/all.css.scss` to have an overview of the architecture.

Structure is as follows:

1. **Settings:** colors, variables, etc.
1. **Vendors:** foundation sites, etc.
1. **Base:** h1, p, a, etc.
1. **Components:** buttons, lists, etc.
1. **Layout:** navbar, footer, etc.
1. **Pages:** custom styling per page

## Going further

### Vendor stylesheets

To install a vendor stylesheet with **Yarn**, use the following command:

```bash
$ yarn add --dev foundation-sites # for instance, for Foundation Sites
```

Any stylesheet added with **Yarn** can be imported into your stylesheet file.
To import a stylesheet, just use `@import` with the path to the file. It should be a **path relative** to the `node_modules/` folder.

For instance, we bundled this boilerplate with `foundation-sites`. The file we want to load is `node_modules/foundation-sites/scss/foundation.scss`. Todo so, in **Vendors section** of `all.css.scss` we added the following line:

```sass
@import "foundation-sites/scss/foundation";
```

### Style Guide

We also provide a **style guide** page. To have a look at it, just open the following link [http://localhost:4567/style-guide.html](http://localhost:4567/style-guide.html)

Anytime you change a color / font, add a vendor plugin or a component, this page should be updated in order to showcase what's available to design your pages.

### Meta Tags

We provide a default preset of meta tag rules. They're based on 2 things:

- **Default configuration:** `data.site` hash defined in `data/site.yml`
- **Per page configuration:** `frontmatter` variables provided in every HTML page template

The following rules are applied:

- **Page Title:** If present, uses frontmatter variable `page_title` in combination with `data.site.name`. Otherwise, only uses `data.site.name`.
- **Title:** If present, uses frontmatter variable `page_title`. Otherwise, fallbacks to `data.site.name`.
- **Description:** Uses the first available frontmatter variable between `summary` and `description`. Otherwise, fallbacks to `data.site.baseline`
- **Image:** Uses the first available frontmatter variable between `banner_picture` and `cover_picture`. Otherwise, fallbacks to `banner-meta.jpg`
- **Site Name:** Uses `data.site.name`
- **Twitter Account:** Uses `data.site.twitter`
- **Geocoding:** Uses `data.site.geocoding` hash.
- **URL:** Computed based on `data.site.url` and the current page.

If you want to change some of these rules, have a look at `helpers/meta_tags_helper.rb`

Feel free to fine tune the frontmatter variables on all your pages.

As a recap, here are the variables that can be customized per page:

- **Page Title:** `page_title`
- **Title:** `page_title`
- **Description:** `summary` or `description`
- **Image:** `banner_picture` or `cover_picture`

## Still under discussion

Choosing a **Javascript** pipeline. Might be **Webpack**.

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

This project is released under the GPL License.
