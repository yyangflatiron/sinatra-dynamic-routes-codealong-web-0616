require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    #resp.status = 200 #DO WE EVER NEED TO SPECIFY THE REST STATUS?
    "Goodbye #{user_name}"
  end

  get '/multiply/:num1/:num2' do
    @num_1 = params[:num1].to_i
    @num_2 = params[:num2].to_i
    @product = num_1*num_2
    #resp.status = 200 #DO WE EVER NEED TO SPECIFY THE REST STATUS?
    "#{product}"
  end


end