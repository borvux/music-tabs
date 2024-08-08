class TabsController < ApplicationController
  # don't need to autheticate_user for the welcome page
  before_action :authenticate_user!, except: [:welcome]
  before_action :set_tab, only: %i[ show edit update destroy ]
  before_action { authorize(@tab || Tab) }

  def welcome
  end

  # GET /tabs or /tabs.json
  def index
    @breadcrumbs = [
      { content: "Tabs", href: tabs_path },
      { content: "Page #{params[:page] || 1}" },
    ]
    @tabs = policy_scope(Tab).by_user(current_user).page(params[:page]).per(10)

    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /tabs/1 or /tabs/1.json
  def show
    @breadcrumbs = [
      { content: "Tabs", href: tabs_path },
      { content: @tab.to_s, href: tab_path(@tab) },
    ]
  end

  # GET /tabs/new
  def new
    @breadcrumbs = [
      { content: "Tabs", href: tabs_path },
      { content: "New" },
    ]
    @tab = Tab.new

    respond_to do |format|
      format.html
      format.js { render "create" }
    end
  end

  # GET /tabs/1/edit
  def edit
    @breadcrumbs = [
      { content: "Tabs", href: tabs_path },
      { content: @tab.to_s, href: tab_path(@tab) },
      { content: "Edit" },
    ]

    respond_to do |format|
      format.html
      format.js { render "update" }
    end
  end

  # POST /tabs or /tabs.json
  def create
    @tab = Tab.new(tab_params)

    respond_to do |format|
      if @tab.save
        @breadcrumbs = [
          { content: "Tabs", href: tabs_path },
          { content: @tab.to_s, href: tab_path(@tab) },
        ]
        format.html { redirect_to tab_url(@tab), notice: "Tab was successfully created." }
        format.json { render :show, status: :created, location: @tab }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabs/1 or /tabs/1.json
  def update
    respond_to do |format|
      if @tab.update(tab_params)
        format.html { redirect_to tab_url(@tab), notice: "Tab was successfully updated." }
        format.json { render :show, status: :ok, location: @tab }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabs/1 or /tabs/1.json
  def destroy
    @tab.destroy!

    respond_to do |format|
      format.html { redirect_to tabs_url, notice: "Tab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tab
    @tab = policy_scope(Tab).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tab_params
    params.require(:tab).permit(:title, :content, :user_id)
  end
end
