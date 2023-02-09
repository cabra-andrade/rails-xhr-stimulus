json.templates do
  json.list render Search::ListComponent.new(@pets)
  json.form render Search::FormComponent.new(@search)
end
