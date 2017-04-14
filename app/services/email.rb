module Services
  class Email

    def self.send(to: '', body: '', subject: '')
      puts "[Envio de email] para #{to}, assunto #{subject}"
      puts body
    end

  end
end
