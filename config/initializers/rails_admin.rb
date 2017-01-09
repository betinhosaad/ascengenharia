RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end
  
  config.model Funcionario do
    list do
      field :name
      field :phone
      field :function
      field :obra
    end
  end
  
  config.model Obra do
      configure :start_date, :date do
        strftime_format '%m/%d/%Y'
      end
  end
  
  config.model Report do
      configure :data, :date do
        strftime_format '%m/%d/%Y'
      end
  end
  
  config.model Boleto do
    list do
      field :preco
      field :vencimento
      field :descricao
      field :situacao
      field :obra
    end
  end
  
  config.model ControleDeObra do
    list do
      configure :id do
        hide
      end
    end
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    
    
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
