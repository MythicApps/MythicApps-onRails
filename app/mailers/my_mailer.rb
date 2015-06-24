class MyMailer < Devise::Mailer

  def confirmation_instructions(record, token, opts={})
    options = {
      :subject => "MythicApps Account Confirmation",
      :email => record.email,
      :global_merge_vars => [
        {
          name: "confirm_account_link",
          content: "<a href='http://localhost:3000/users/confirmation?confirmation_token=#{token}' target='_blank' style='color: #ffdb6e;'>Confirmation Link</a>"
        },
        {
          name: "test",
          content: "hello world!"
        }
      ],
      :template => "application-confirmation-template"
    }
    mandrill_send options
  end

  def mandrill_send(opts={})
    message = {
      :subject=> "#{opts[:subject]}",
      :from_name=> "MythicApps Team",
      :from_email=>"hello@mythicapps.io",
      :to=>
            [{"name"=>"MythicApps Applicant",
                "email"=>"#{opts[:email]}",
                "type"=>"to"}],
      :global_merge_vars => opts[:global_merge_vars]
      }
    sending = MANDRILL.messages.send_template opts[:template], [], message
    rescue Mandrill::Error => e
      Rails.logger.debug("#{e.class}: #{e.message}")
      raise
  end

end
