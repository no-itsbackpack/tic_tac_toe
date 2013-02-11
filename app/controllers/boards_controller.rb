class BoardsController < ApplicationController
  # GET /boards
  # GET /boards.json

#board = @board.find param[:id]
#position = Positions.create

 

  def play
    #@board = Board.find(params[:id])

    #current_positions = @board.positions.new(params[:positions])

    respond_to do |format|
      format.html {redirect_to boards_url}
    end
    #respond_to do |format|
     # if @position.save
      #  format.html { redirect_to boards_url, notice: 'Position was successfully created.' }
      #else
      #  format.html { render action: "new" }
      #end
    #end
  end



  def new
    @board = Board.new
    @positions = @board.positions.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @board }
    end
  end


  def create
    @board = Board.new(params[:board])

    respond_to do |format|
      if @board.save
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
        format.json { render json: @board, status: :created, location: @board }
      else
        format.html { render action: "new" }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boards/1
  # PUT /boards/1.json
  def update
    @board = Board.find(params[:id])

    respond_to do |format|
      if @board.update_attributes(params[:board])
        format.html { redirect_to @board, notice: 'Board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    respond_to do |format|
      format.html { redirect_to boards_url }
      format.json { head :no_content }
    end
  end
end
