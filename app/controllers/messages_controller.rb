class MessagesController < ApplicationController
  def index
    @message = Message.new
    ##メッセージを全て取得
    @message = Message.all
  
  end
  ##messageを初期化
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  
  private ##ストロングパラメーター（イレギュラー防止）
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ##ここまで  
end
