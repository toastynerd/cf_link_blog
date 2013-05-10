class LinkPostsController < ApplicationController
  # GET /link_posts
  # GET /link_posts.json
  def index
    @link_posts = LinkPost.find(:all, :limit => 5, :order=> 'created_at').reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @link_posts }
    end
  end

  # GET /link_posts/1
  # GET /link_posts/1.json
  def show
    @link_post = LinkPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link_post }
    end
  end

  # GET /link_posts/new
  # GET /link_posts/new.json
  def new
    @link_post = LinkPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link_post }
    end
  end

  # GET /link_posts/1/edit
  def edit
    @link_post = LinkPost.find(params[:id])
  end

  # POST /link_posts
  # POST /link_posts.json
  def create
    @link_post = LinkPost.new(params[:link_post])

    respond_to do |format|
      if @link_post.save
        format.html { redirect_to @link_post, notice: 'Link post was successfully created.' }
        format.json { render json: @link_post, status: :created, location: @link_post }
      else
        format.html { render action: "new" }
        format.json { render json: @link_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /link_posts/1
  # PUT /link_posts/1.json
  def update
    @link_post = LinkPost.find(params[:id])

    respond_to do |format|
      if @link_post.update_attributes(params[:link_post])
        format.html { redirect_to @link_post, notice: 'Link post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_posts/1
  # DELETE /link_posts/1.json
  def destroy
    @link_post = LinkPost.find(params[:id])
    @link_post.destroy

    respond_to do |format|
      format.html { redirect_to link_posts_url }
      format.json { head :no_content }
    end
  end
end
