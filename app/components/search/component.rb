# frozen_string_literal: true

module Search
  class Component < ViewComponent::Base
    renders_one :form, 'Search::FormComponent'
    renders_one :list, 'Search::ListComponent'
  end
end
