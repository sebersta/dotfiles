# function fish_prompt
#     if test $status != 0
#         echo (set_color red)"•"(set_color blue) "❯ ~ "(set_color normal)
#     else
#         echo (set_color green)"•"(set_color blue) "❯ ~ "(set_color normal)
#     end
# end

function fish_prompt
    if test $status != 0
        echo (set_color red)(prompt_hostname)(set_color blue) " ❯ ~ "(set_color normal)
    else
        echo (set_color green)(prompt_hostname)(set_color blue) " ❯ ~ "(set_color normal)
    end
end

function fish_right_prompt
    printf (set_color brblack)(pwd)(set_color normal)
end
