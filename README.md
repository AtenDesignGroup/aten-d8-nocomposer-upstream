# aten-d8-nocomposer-upstream
Pantheon upstream for Drupal 8. This is based largely on https://github.com/pantheon-systems/drops-8

## Why a new upstream
Long-term, Composer will be the approach for D8 projects. Pantheon allows users to add files/directories outside the webroot now, so creating an upstream that simply puts their upstream in a directory called "web", we can tap into the powers of the pantheon.yml file. https://pantheon.io/docs/pantheon-yml/

## Web directory is a git subtree

### Subtrees are added with
git subtree add --prefix [directory] [repo-path] [branch] --squash

### Included subtrees that can be pulled in

#### Pantheon Drop 8
git subtree pull --prefix web git@github.com:pantheon-systems/drops-8.git master --squash

#### Aten D8 Install Profile
git subtree pull --prefix web/profiles/aten_d8 git@github.com:AtenDesignGroup/aten-d8-profile.git master --squash

#### Aten Utils
git subtree pull --prefix utils/aten-gulp git@github.com:AtenDesignGroup/aten-gulp.git drupal-8 --squash


Checkout http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/ for more info on git subtrees.

## Other variants

1. Move Drupal to web/ This allows for build utilities like grunt/gulp to exist in the repo.
2. The config directory is moved outside the webroot. This includes a change in the settings.pantheon.php file to point config to ../config. This allows config to be committed to the repo.
3. pantheon.yml file in the root. This controls PHP version and the fact that our web root is different. https://pantheon.io/docs/pantheon-yml/
4. Aten install profile - This is a lightweight install profile that sets up D8 sites how we like them.
