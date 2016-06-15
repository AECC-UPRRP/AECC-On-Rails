class MembersController < ApplicationController
def new
	@member = Member.new
end

def create
	@member = Member.new(member_params)
	@member.active = false
	puts @member
	if @member.save
		redirect_to '/yolo'
	else
		redirect_to '/notyolo'
	end
end

   private
   	def member_params
  	 	params.require(:member).permit(:fname, :email,:active)
  	end

end
