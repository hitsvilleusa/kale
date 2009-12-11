class Kale
  def initialize(app)
    @app = app
  end
  
  def call(env)
    File.open("tmp/test.log", 'w') do |file|
      file.write("Hello World.")
    end
    
    @app.call(env)
  end
end