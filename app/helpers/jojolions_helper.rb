module JojolionsHelper
  def jojo_calc
    session[:prime].succ
  end
end
