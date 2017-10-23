class FriendsController < ApplicationController
  def index
    @users = User.where.not(id: current_user.id)

    @temp = Tablefriend.where(id_acc: current_user.id)
    friendArr = []
    @temp.each do |u|
      friendArr.push(u.id_friend)
    end

    @temp = Tablefriend.where(id_friend: current_user.id)
    @temp.each do |u|
      friendArr.push(u.id_acc)
    end

    @Tablefriends = User.where('id in (?)', friendArr)
    @block_friends = BlockFriend.where(id_acc: current_user.id)
  end

  def addfriend
    @friend = Tablefriend.new(id_acc: current_user.id, id_friend: params[:id_friend])
    if @friend.save
      flash[:notice] = "Add friend is successed"
    end
    redirect_to '/friends/index'
  end

  def unfriend
    Tablefriend.where(id_acc: current_user.id ,id_friend: params[:id_friend]).destroy_all
    Tablefriend.where(id_acc: params[:id_friend], id_friend: current_user.id).destroy_all
    BlockFriend.where(id_acc: current_user.id ,id_friend: params[:id_friend]).destroy_all
    flash[:notice] = "Unfriend is successed"
    redirect_to '/friends/index'
  end

  def block
    @block_friend = BlockFriend.new(id_acc: current_user.id, id_friend: params[:id_friend])
    if @block_friend.save
      flash[:notice] = "Block friend is successed"
    end
    redirect_to '/friends/index'
  end

  def unblock
    BlockFriend.where(id_acc: current_user.id ,id_friend: params[:id_friend]).destroy_all
    flash[:notice] = "Unblock is successed"
    redirect_to '/friends/index'
  end


end
