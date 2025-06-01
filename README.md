# 📝 Jekyll Git Metadata

> [!NOTE]
 This is a fork of a fork of a gem made for Jekyll 3. The previous fork was not published to any package registry (but made several very helpful additions) so this one serves as an accessible way to continue using the functionality of the original package in new Jekyll sites. You can see an example of the package in the footer of [this site](https://joshpinto6.github.io/doctored) and I plan on accepting contributions/improvements through PRs.

## 👋 Introduction

Expose Git metadata to Jekyll. Just like how Github exposes [repository metadata](https://help.github.com/articles/repository-metadata-on-github-pages), this plugin will expose information about your git repository for your templates. For example:

```
{{site.git.total_commits}} # => Will return the total number of commits for your Jekyll repository
```

See [usage](#usage) for more detail on the schema of `site.git`.

## 💾 Installation

My version of thie gem is installable from GitHub Package Registry (GPR)'s rubygems accesspoint. 

> [!IMPORTANT]
> You must provide a GitHub access token with `read:packages` permission to install this package! This is just something that GPR requires and you can learn more about the ways to do it [here](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-rubygems-registry#authenticating-with-a-personal-access-token) or see an example of how to implement this package in a GitHub action [here](https://github.com/joshpinto6/doctored/blob/main/.github/workflows/jekyll.yml)

Install with the command line:
```bash
gem install jekyll-git_metadata
```

Add to your `Gemfile`:

```
source "https://rubygems.pkg.github.com/joshpinto6" do
  gem "jekyll-git_metadata"
end
```

Add to your `_config.yml`:

```yml
gems:
  - jekyll-git_metadata
```

## ⌨️ Usage

This plugin adds a hash of git information to the `site` and `page` variables. The hash looks something like this:

```
{"authors"=>
  [
   {"commits"=>2, "name"=>"Ivan Tse", "email"=>"ivan@example.com"},
   {"commits"=>5, "name"=>"John Smith", "email"=>"john@example.com"}
  ],
 "total_commits"=>7,
 "total_additions"=>57,
 "total_subtractions"=>22,
 "first_commit"=>
  {"short_sha"=>"d15cbe8",
   "long_sha"=>"d15cbe8d0f4d4db9efda7a3daabbe966c21f3848",
   "author_name"=>"John Smith",
   "author_email"=>"john@example.com",
   "author_date"=>"Thu Jan 16 23:36:00 2014 -0500",
   "commit_name"=>"John Smith",
   "commit_email"=>"john@example.com",
   "commit_date"=>"Thu Jan 16 23:36:00 2014 -0500",
   "message"=>"A commit!"},
 "last_commit"=>
  {"short_sha"=>"f88ca3b",
   "long_sha"=>"f88ca3bff630efb6cdb356fad3d640534b109572",
   "author_name"=>"Ivan Tse",
   "author_email"=>"ivan@example.com",
   "author_date"=>"Mon Jul 14 04:04:47 2014 -0400",
   "commit_name"=>"John Smith",
   "commit_email"=>"john@example.com",
   "commit_date"=>"Mon Jul 14 04:04:47 2014 -0400",
   "message"=>"Fix some stuff"}}
```

To access this hash, use either `page.git` or `site.git`. `page.git` contains the git information about that particuliar page/file. `site.git` contains the git information for the entire git repository. `site.git` also includes `total_files` and `project_name` variables.
