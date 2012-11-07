class ShortenUrlsController < ApplicationController
  # GET /shorten_urls
  # GET /shorten_urls.json
  def index
    @shorten_urls = ShortenUrl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shorten_urls }
    end
  end

  # GET /shorten_urls/1
  # GET /shorten_urls/1.json
  def show
    @shorten_url = ShortenUrl.find(params[:id])
    redirect_to("http://" + @shorten_url.source_url)

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @shorten_url }
    # end
  end

  # GET /shorten_urls/new
  # GET /shorten_urls/new.json
  def new
    @shorten_url = ShortenUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shorten_url }
    end
  end

  # GET /shorten_urls/1/edit
  def edit
    @shorten_url = ShortenUrl.find(params[:id])
  end

  # POST /shorten_urls
  # POST /shorten_urls.json
  def create
    @shorten_url = ShortenUrl.new(params[:shorten_url])

    respond_to do |format|
      if @shorten_url.save
        format.html { redirect_to shorten_urls_path, notice: 'Shorten url was successfully created.' }
        format.json { render json: @shorten_url, status: :created, location: @shorten_url }
      else
        format.html { render action: "new" }
        format.json { render json: @shorten_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shorten_urls/1
  # PUT /shorten_urls/1.json
  def update
    @shorten_url = ShortenUrl.find(params[:id])

    respond_to do |format|
      if @shorten_url.update_attributes(params[:shorten_url])
        format.html { redirect_to shorten_urls_path, notice: 'Shorten url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shorten_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shorten_urls/1
  # DELETE /shorten_urls/1.json
  def destroy
    @shorten_url = ShortenUrl.find(params[:id])
    @shorten_url.destroy

    respond_to do |format|
      format.html { redirect_to shorten_urls_url }
      format.json { head :no_content }
    end
  end
end
