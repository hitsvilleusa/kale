class Kale
  def initialize(app, fmt, vars)
    @app = app
    @fmt = fmt
    @vars = vars
    @log = Logger.new("#{RAILS_ROOT}/log/kale.log")
  end
  
  def call(env)
    @log.info @fmt % @vars.map { |v| env[v] }
    @app.call(env)
  end
end