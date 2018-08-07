class BooksController < ApplicationController
  python :show
  python :error_test

  node :list
  node :node_error_test
end