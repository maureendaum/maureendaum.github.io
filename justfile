update-webring:
    openring -S blogroll.txt -t _includes/in.html > _includes/webring.html

install:
    bundle install

serve:
    bundle exec jekyll server --livereload

update:
    bundle update github-pages
