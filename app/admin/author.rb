ActiveAdmin.register Author do
  permit_params :name
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  show do
    h3 author.name
    div do
      "name: #{author.name} , #{author.created_at.to_date}, Id: #{author.id},  [#{link_to "Test","Test"}] ".html_safe
    end
  end
end




