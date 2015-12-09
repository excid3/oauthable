module Admin
  class ProvidersController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Provider.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
     def find_resource(param)
       Provider.friendly.find(param)
     end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
