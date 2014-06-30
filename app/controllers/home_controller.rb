class HomeController < ApplicationController
    def index
        @phone = Skin.where("group_id like ?", '1'+"%")
        @table = Skin.where("group_id like ?", '2'+"%")
        @table = Skin.where("")

        @group = Group.order(:name)
    end
end