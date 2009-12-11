class Kale
  def initialize(app, fmt, vars)
    @app = app
    @fmt = fmt
    @vars = vars
  end
  
  def call(env)
    l = Logger.new("#{RAILS_ROOT}/log/kale.log")
    l.info @fmt % @vars.map { |v| env[v] }
    @app.call(env)
  end
end