loginif @error.eql? 1
  node(:error){ @error }
  node(:errors){ @errors }
end
if @error.eql? 0
  node(:status){ 200 }

  child @user do
    attributes :email, :user_id, :authentication_token
      node(:email){ @user.email }
      node(:id){ @user_id }
      node(:authentication_token){ @authentication_token }
  end
end