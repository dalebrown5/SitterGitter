require 'twilio-ruby'

class GitSittersController < ApplicationController

  before_action :set_git_sitter, only: [:show, :edit, :update, :destroy]

  # GET /git_sitters
  # GET /git_sitters.json
  def index
    @git_sitters = current_user.git_sitters
  end

  # GET /git_sitters/1
  # GET /git_sitters/1.json
  def show
  end

  # GET /git_sitters/new
  def new
    @git_sitter = GitSitter.new
  end

  # GET /git_sitters/1/edit
  def edit
  end

  # POST /git_sitters
  # POST /git_sitters.json
  def create
    @git_sitter = GitSitter.new(git_sitter_params)
    @git_sitter.user = current_user

    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    @client = Twilio::REST::Client.new account_sid, auth_token
    current_user.selected_sitters.each do |sitter|
      puts ">>>> #{sitter.phone.inspect} <<<<"

      @client.messages.create(
        from: '385-244-2825',
        to: sitter.phone,
        body: @git_sitter.message
      )
      # send message to sitter
      # create GitSitterSelection record
    end

    respond_to do |format|
      if @git_sitter.save
        format.html { redirect_to git_sitters_url }
        format.json { render :show, status: :created, location: @git_sitter }
      else
        format.html { render :new }
        format.json { render json: @git_sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /git_sitters/1
  # PATCH/PUT /git_sitters/1.json
  def update
    respond_to do |format|
      if @git_sitter.update(git_sitter_params)
        format.html { redirect_to git_sitters_url }
        format.json { render :show, status: :ok, location: @git_sitter }
      else
        format.html { render :edit }
        format.json { render json: @git_sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /git_sitters/1
  # DELETE /git_sitters/1.json
  def destroy
    @git_sitter.destroy
    respond_to do |format|
      format.html { redirect_to git_sitters_url, notice: 'Git sitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_git_sitter
      @git_sitter = GitSitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def git_sitter_params
      params.require(:git_sitter).permit(:when, :how_long, :message)
    end
end
