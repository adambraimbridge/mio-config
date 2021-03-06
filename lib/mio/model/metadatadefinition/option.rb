class Mio
  class Model
    class MetadataDefinition
      class Option < Model
        set_resource :metadatadefinition

        field :name, String, 'Metadata Definition Name'
        field :displayName, String, 'Metadata Definition Description'
        field :default, Symbol, 'Metadata type'
        field :value, String, 'Indexed and searchable'

        nested true

        def create_hash
          {name: @args.name,
           displayName: @args.displayName,
           default: @args.default,
           value: @args.value
          }
        end

        def build_xml children
          children.send("option-child", name: @args.name,
                        default: @args.default,
                        value: @args.value,
                        display_name: @args.displayName);
        end

      end
    end
  end
end