require 'devise_pam_authenticatable/strategy'

module Devise
  module Models
   module PamAuthenticatable

     def self.included(base)
       base.class_eval do
         extend ClassMethods

         attr_accessor :password
       end
     end
     
     # Set password to nil
     def clean_up_passwords
       self.password = nil
     end

     # Checks if a resource is valid upon authentication.
     def valid_pam_authentication?(password)
       Devise::PamAdapter.valid_credentials?(self.email, password)
     end
     
     module ClassMethods
       def authenticate_with_pam(attributes={})
         return nil unless attributes[:email].present?

         resource = scoped.where(:email => attributes[:email]).first
         if resource.blank?
           resource = new
           resource[:email] = attributes[:email]
           #resource[:password] = attributes[:password]
         end

         if resource.try(:valid_pam_authentication?, attributes[:password])
           resource.save if resource.new_record?
           return resource
         else
           return nil
         end
       end
     end
   end
  end
end
