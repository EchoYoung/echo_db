def full_title(page_title)
    base_title = "EchoLabs - A WATCH Into Your Body"
    if page_title.empty?
        base_title
    else
        "#{base_title} | #{page_title}"
    end
end