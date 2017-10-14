class MessagesController < ApplicationController
  def inbox
    @active = :inbox
  end

  def sent
    @active = :sent
  end

  def trash
    @active = :trash
  end

  def important
    @active = :important
  end

  def drafts
    @active = :drafts
  end

end
