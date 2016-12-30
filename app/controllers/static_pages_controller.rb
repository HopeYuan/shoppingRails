class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  def about
          @product=Product.find_by_title("Shoes")
      end
      def admin
      end 
end
