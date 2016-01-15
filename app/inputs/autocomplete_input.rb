##
# Defines the :autocomplete input type.
# @example <% f.input :occupation, as: :autocomplete, data: { url: admin_occupations_path } %>
class AutocompleteInput < SimpleForm::Inputs::CollectionSelectInput
  self.default_options = { prefix: '<i class="fa fa-fw fa-magic"></i>'.html_safe }

  def input
    # Get the currently associated object
    current_assoc = object.public_send(attribute_name.to_s.sub('_id', ''))

    if current_assoc.present?
      current_assoc_id = current_assoc.is_a?(ActiveRecord::Base) ? current_assoc.to_param : current_assoc.to_s

      options[:collection] = [[current_assoc.to_s, current_assoc_id]]
      options[:selected] = current_assoc_id
    end

    super
  end

  def input_html_classes
    super.push('pure-admin-autocompleter')
  end

  def input_html_options
    super.deep_merge(
      data: {
        'ajax--url' => options[:url],
        'tags' => options[:create_when_no_match] || false
      },
      style: 'width: 100%;'
    )
  end
end
