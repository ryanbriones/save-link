require 'sinatra/base'
require 'save_link/link'

module SaveLink
  class Application < Sinatra::Base


    configure do
      eval(File.read(File.join(root, 'config', environment.to_s + ".rb")))
    end

    get '/' do
      @links = Link.all(:order => [:created_at.desc])

      erb :index
    end

    post '/links', :provides => :js do
      if params['url']
        halt 500 unless Link.create(:url => params['url'])
      end
    end
    
    post '/links' do
      if params['url']
        Link.create(:url => params['url'], :title => params['title'])

        redirect index_url
      end
    end

    get '/links/:link_id/go' do |link_id|
      link = Link.first(:id => link_id)
      redirect link.url
    end

    helpers do
      def base_url
        host = env['HTTP_HOST'] || env['SERVER_NAME']
        host.gsub!(/\:80\z/, '')

        url = "#{env['rack.url_scheme']}://#{host}"
        if env['SCRIPT_NAME'] && env['SCRIPT_NAME'] !~ /^$/
          url << env['SCRIPT_NAME']
        end

        url
      end

      def index_url
        "#{base_url}/"
      end

      def go_link_url(link_id)
        "#{base_url}/links/#{link_id}/go"
      end

      def bookmarklet
        "function%20save(){var%20d=document,z=d.createElement('scri'+'pt'),b=d.body;" +
          "z.setAttribute('src','#{base_url}/javascripts/post-link.js');" +
          "b.appendChild(z);}save();void(0)"
      end
    end
  end
end
