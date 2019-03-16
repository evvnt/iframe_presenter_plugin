require_relative 'iframe/component'
module Voom
  module Presenters
    module Plugins
      module Iframe
        module DSLComponents
          def iframe(src, **attributes, &block)
            self << Iframe::Component.new(src, parent: self, **attributes, &block)
          end
        end
        module WebClientComponents
          def render_iframe(comp,
                         render:,
                         components:,
                         index:)
            view_dir = File.join(__dir__, 'iframe')
            render.call :erb, :iframe, views: view_dir,
                        locals: {comp: comp,
                                 components: components, index: index}
          end
        end
      end
    end
  end
end
