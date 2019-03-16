module Voom
  module Presenters
    module Plugins
      module Iframe
        class Component < DSL::Components::Base
          attr_reader :src, :width, :height, :scrolling
          def initialize(src, **attribs, &block)
            super(type: :iframe, **attribs, &block)

            @src = src
            @width = attribs.delete(:width) { nil }
            @height = attribs.delete(:height) { nil }
            @scrolling = attribs.delete(:scrolling) { :no }
            expand!
          end
        end
      end
    end
  end
end
