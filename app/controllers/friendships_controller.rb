class FriendshipsController < ApplicationController
  def friend_requests
    @incoming_requests = Friendship.where(friend_id: current_user.id).where(status: "pending")
  end

  def accept_friend_request
    request = Friendship.find(params[:id])
    user1 = request.user
    user2 = request.friend
    request.destroy
    Friendship.create(user_id: user1.id, friend_id: user2.id, status: "friends")
    Friendship.create(user_id: user2.id, friend_id: user1.id, status: "friends")
    redirect_to friend_requests_path
  end

  def decline_friend_request
    request = Friendship.find(params[:id])
    request.destroy
    redirect_to friend_requests_path
  end

  def create
    friendship = Friendship.new(
        user_id: current_user.id,
        friend_id: params[:id],
        status: "pending"
    )
    friendship.save
    redirect_to user_path(params[:id])
  end

  def destroy
  end
end
