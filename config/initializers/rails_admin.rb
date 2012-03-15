# RailsAdmin config file. Generated on March 16, 2012 00:39
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Myphoto', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Album, Photo, Tag, User]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Album, Photo, Tag, User]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Album do
  #   # Found associations:
  #     configure :user, :belongs_to_association 
  #     configure :photos, :has_many_association   #   # Found columns:
  #     configure :_type, :mongoid_type         # Hidden 
  #     configure :_id, :bson_object_id         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :name, :string 
  #     configure :description, :text 
  #     configure :user_id, :bson_object_id         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Photo do
  #   # Found associations:
  #     configure :user, :belongs_to_association 
  #     configure :album, :belongs_to_association 
  #     configure :tags, :has_and_belongs_to_many_association   #   # Found columns:
  #     configure :_type, :mongoid_type         # Hidden 
  #     configure :_id, :bson_object_id         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :user_id, :bson_object_id         # Hidden 
  #     configure :album_id, :bson_object_id         # Hidden 
  #     configure :tag_ids, :serialized         # Hidden 
  #     configure :name, :string 
  #     configure :image, :carrierwave   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Tag do
  #   # Found associations:
  #     configure :photos, :has_and_belongs_to_many_association   #   # Found columns:
  #     configure :_type, :mongoid_type         # Hidden 
  #     configure :_id, :bson_object_id         # Hidden 
  #     configure :photo_ids, :serialized         # Hidden 
  #     configure :name, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  config.model User do
  #   # Found associations:
  #     configure :albums, :has_many_association 
  #     configure :photos, :has_many_association   #   # Found columns:
  #     configure :_type, :mongoid_type         # Hidden 
  #     configure :_id, :bson_object_id         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :email, :text 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :text         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :text 
  #     configure :last_sign_in_ip, :text 
  #     configure :name, :string 
  #     configure :say, :text 
    configure :role, :integer 
    list do
      config.default_items_per_page = 100
      field :email do
        formatted_value do
          bindings[:view].tag(:img, { src: "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest value.to_s}?s=20" }) << value
        end
      end
      field :name
      field :created_at do
        strftime_format "%Y-%m-%d"
      end
      field :last_sign_in_at do
        strftime_format "%Y-%m-%d"
      end
      field :sign_in_count
      field :role do
        label "admin"
        formatted_value do
          value == 1 ? "true" : "false"
        end
      end
    end
    show do
      include_all_fields
    end
    # export do; end
    # show do; end
    # edit do; end
    # create do; end
    # update do; end
  end
end
