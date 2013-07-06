class Users::RegistrationsController < Devise::RegistrationsController
 before_filter :before_create_account, :only => [:create]
 after_filter :account_must_have_a_plan, :only => [:create]
 expose(:plan){Plan.find_by_slug(params[:plan])}
 def new
   redirect_to user_dashboard_path if current_user
   resource = build_resource({})
   resource.build_account
   resource.account.build_subscription
   resource.plan_slug = plan.slug if plan
   respond_with resource
 end

 def after_inactive_sign_up_path_for(resource)
   users_dashboard_path
 end

 def after_sign_up_path_for(resource)
   sign_in(resource)
   users_dashboard_path
 end

 private
 def before_create_account
    params[:user][:is_owner] = true
    params[:user][:is_primary] = true
 end

 def account_must_have_a_plan
   unless resource.new_record?
     plan = Plan.find_by_slug(params[:user][:plan_slug])
     Subscription.new(:account_id => resource.account.id, :plan_id => plan.id, :name => plan.name, :price => plan.price, :slug => plan.slug, :licenses => plan.licenses  ).save
   end
 end

end

