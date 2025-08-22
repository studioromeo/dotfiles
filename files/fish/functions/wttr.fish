# Gets the current weather in ascii

function wttr
    if ! test -n "$argv"
        set argv 'cardiff'
    end

    curl "http://wttr.in/$argv"
end
