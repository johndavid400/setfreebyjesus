class Import

  def initialize
    @table = "posts"
    @auto_inc_val = @table.camelize.singularize.constantize.last.id + 1
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{@table}_id_seq RESTART WITH #{@auto_inc_val};")
  end

end
