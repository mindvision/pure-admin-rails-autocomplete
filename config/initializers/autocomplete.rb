Mime::Type.register 'application/x-autocomplete+json', :autocomplete

class ActionController::Responder
  def to_autocomplete
    results = resource.map do |o|
      if o.respond_to?(:to_autocomplete)
        o.to_autocomplete
      else
        { id: o.to_param, name: o.to_s }
      end
    end

    render json: results, content_type: 'application/json'
  end
end