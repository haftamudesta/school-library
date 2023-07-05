name: Linters

on: pull_request

jobs:
  rubocop:
    name: Rubocop
    runs-on: ubuntu-22.04
    
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-ruby@v1
        with:
          ruby-version: ">=3.1.x"
      - name: Setup Rubocop
        run: |
          gem install --no-document rubocop -v '>= 1.0, < 2.0' # https://docs.rubocop.org/en/stable/installation/
          [ -f .rubocop.yml ] || wget https://raw.githubusercontent.com/microverseinc/linters-config/master/ruby/.rubocop.yml
      - name: Rubocop Report
        run: rubocop --color
