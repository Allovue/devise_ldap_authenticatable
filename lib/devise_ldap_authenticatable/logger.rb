module DeviseLdapAuthenticatable

  class Logger    
    def self.send(message, logger = Rails.logger)
      if ::Devise.ldap_logger
        logger.add ::Devise.logger_level, "  \e[36mLDAP:\e[0m #{message}"
      end
    end
  end

end
