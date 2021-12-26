module Services
  module Bot
    class Actions

      def call(message:)
        response = store_message(message)
        prepare_response(response)
      end

      private

      def store_message(message)
        case message.text
        when "/hello" then "Hello #{message.from.first_name}"
        when "/start" then "Let's start #{message.from.first_name}"
        when "/stop"   then  "Buy #{message.from.first_name}"
        end
      end

      def prepare_response(text)
        {
          text: text
        }
      end
    end
  end
end