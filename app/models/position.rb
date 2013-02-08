class Position < ActiveRecord::Base
  belongs_to :board
  attr_accessible :row, :col, :player
end
