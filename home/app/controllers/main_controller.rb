class MainController < ApplicationController


def welcome
@num_books=Book.count
end

def result
@bookid=params[:sid]
@bookz=Book.find(:all, :conditions=>["name like ?", "%#{@bookid}%"])
end



end
