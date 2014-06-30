ActiveAdmin.register Skin do

  permit_params :name, :specs, :detail, :price, :group_id, :category_id, :photo
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :name
    column :specs
    column :detail
    column :price
    actions
  end

  form do |f|
    f.inputs "Detail" do
      f.input :name
      f.input :specs, :input_html => {:rows => 3}
      f.input :detail, :input_html => {:rows => 5}
      f.input :price
      f.input :group
      f.input :category
      f.input :photo, :as => :file
    end
    f.actions
  end

  show do |s|
    attributes_table do
      row :name
      row :specs
      row :detail
      row :price
      row :group
      row :category
      row :photo do
        image_tag(s.photo.url(:medium))
      end
    end
  end
end
