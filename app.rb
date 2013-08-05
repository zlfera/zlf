#coding:utf-8
#require 'sinatra/base'             #模块化方式
#require 'sinatra/reloader'
#require 'slim'
class Zlf<Sinatra::Base            
    enable :logging                    #显示日志
    register Sinatra::Reloader     #支持重载
    Dir.glob('./controllers/*.rb').each {|file| require file}
    not_found do
        redirect to('/error')
    end
    #App.run!                            #模块化方式
end











module Aa
    def initialize
        puts 'aa'
    end
end
module A
  def initialize
    puts 'a'
  end
end

module B
    include A
end

module C
    include A
  def initialize
    puts 'c'
  end
end

class D
  include C
  include B
  def initialize
    super # 明显? 谁记住父类方法查找是深度优先还是广度优先?
  end
end
