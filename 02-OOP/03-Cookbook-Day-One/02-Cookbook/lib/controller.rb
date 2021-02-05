class Controller

  def initialize(cookbook)
    @cookbook = cookbook
  end


  def list
    @view.display_recipes(@cookbook.all)
  end

end
