# Homepage (Root path)
helpers do
  def current_user
  @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

get '/' do
  erb :index
end

get '/login' do
  erb :login
end

post '/login' do
  username = params[:username]
  password = params[:password]
  user = User.find_by(username: username)
  if user.password == password
    session[:user_id] = user.id
    redirect '/profile'
  else
    redirect '/login'
  end
end

post '/signup' do
    first_name = params[:first_name]
    last_name = params[:last_name]
    username = params[:username]
    email = params[:email]
    password = params[:password]

  user = User.create username: username, email: email, password: password, first_name: first_name, last_name: last_name
    if user
      session[:user_id] = user.id
      redirect '/profile'
    else
      redirect '/signup'
    end
end

get '/profile' do
  @current_user = current_user
  erb :profile
end

post '/profile' do
  redirect '/'
end

get '/pins/new' do
  @current_user = current_user
    erb :new_pin
end

post '/pins/new' do
  
  current_user.pins.create(image: params[:image], description: params[:description])
  redirect '/profile'
end
  