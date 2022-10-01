# typed: strong
# This is an autogenerated file for Rails' mailers.
# Please rerun bundle exec rake rails_rbi:mailers to regenerate.
class Pay::UserMailer
  sig { returns(ActionMailer::MessageDelivery) }
  def self.payment_action_required; end

  sig { returns(ActionMailer::MessageDelivery) }
  def self.receipt; end

  sig { returns(ActionMailer::MessageDelivery) }
  def self.refund; end

  sig { returns(ActionMailer::MessageDelivery) }
  def self.subscription_renewing; end
end
