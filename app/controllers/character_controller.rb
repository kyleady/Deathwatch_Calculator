class CharacterController < ApplicationController
  def calculator
    @stats = %w(WS BS S T Ag It Pr Wp Fe)
  end
end
