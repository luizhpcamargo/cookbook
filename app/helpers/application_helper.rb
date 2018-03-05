module ApplicationHelper
    def link_to_add_fields(name, f, association, options = {})
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      prefix =  options[:path] || ""
      prefix += '/' if !prefix.blank? && prefix[prefix.size-1] != "/"
      fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
        render(prefix  + association.to_s.singularize + "_fields", f: builder)
      end
      table = 'table_' if options[:table]
      klass = "add_#{table}fields #{options[:class]}"
      link_to(name, '#', class: klass.rstrip, data: {id: id, fields: fields.gsub("\n", "")})
    end
end
