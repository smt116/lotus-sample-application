module Web::Views::Home
  class Index
    include Web::View

    def date
      DateTime.now.strftime("%d %B %Y")
    end

    def time
      Time.now.strftime("%H:%M")
    end
  end
end
