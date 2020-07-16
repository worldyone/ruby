class AjaxController < ApplicationController
  layout 'ajax'

  def index
  end

  def data
    @data = Person.where 'name like ?', '%' + params[:name] + '%'
    @data = @data.to_json.html_safe

    # @ajax_data = Person.find 1
  end

end
