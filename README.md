# Middleman boilerplate

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

## WHere to start?

### Settings

You'll find the main settings of your website in `data/site.yml`.
This is where you'll set your website **name**, **baseline**, **url**, **author name** and **contact email**.

### Pages

Two pages are already provided for you:

- **Home:** source/index.html.slim
- **About:** source/about.html.slim

Feel free to edit the home page or remove the about page.

### Images

Three images are provided: `logo.jpg` used as favicon and the other ones used in the homepage.
Again, feel free to change or remove them.

### Stylesheets

Have a look at `source/assets/stylesheets/all.css.scss` to have an overview of the architecture.

Structure is as follows:

1. **Settings:** colors, variables, etc.
1. **Vendors:** foundation, etc.
1. **Base:** h1, p, a, etc.
1. **Components:** buttons, etc.
1. **Layout:** navbar, footer, etc.
1. **Pages:** custom styling per page

## Going further

### Vendor stylesheets

To install a vendor stylesheet with **Yarn**, use the following command:

```bash
$ yarn add --dev foundation-sites # for instance, for Foundation Sites
```

Any stylesheet added with **Yarn** is direcly available as import in your stylesheet file.
To import a stylesheet, just use `@import` with the path to the file. It should be a **relative path** to `node_modules` folder.

For instance, we bundled this boilerplate with `foundation-sites`. The file we want to load is `node_modules/foundation-sites/scss/foundation.scss`. Todo so, in **Vendors section** of `all.css.scss` we added the following line:

```sass
@import "foundation-sites/scss/foundation";
```

## Still under discussion

Choose a **Javascript** pipeline. Might be **Webpack**.

## License

This project is released under the GPL License.
