class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Sidekiq::Logging.Logger.info "サンプルジョブを実行しました"
  end
end
