def template(data)
    "
    <html>
        <head>
            <title>Mi pagina de NASA API</title>
            <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css' integrity='sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2' crossorigin='anonymous'>
        </head>
        <body>
            <h1 style='text-align: center;'>NASA API</h1>
            #{characters(data)}
            <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity='sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' crossorigin='anonymous'></script>
            <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity='sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN' crossorigin='anonymous'></script>
            <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js' integrity='sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx' crossorigin='anonymous'></script>
        </body>    
    </html>
    "
end

#def characters(chars)

#    char_cards =''

#    chars["photos"].each do |char|
#        char_cards +='
#            <div class="card mb-3" style="max-width: 540px;">
#            <div class="row no-gutters">
#            <div class="col-md-4">
#                <img src=' + char["img_src"].to_s + ' class="card-img" alt=' + char["name"].to_s + '>
#            </div>
#            <div class="col-md-8">
#            <div class="card-body">
#                <h5 class="card-title">' + char["full_name"].to_s + '</h5>
#                <p class="card-text">' + char["camera"].to_s + '</p>
#                <p class="card-text">' + char["rover"] ["name"].to_s + '</p>
#                <p class="card-text"><small class="text-muted">' + char["species"].to_s + '</small></p>
#            </div>
#            </div>
#            </div>
#        </div>'
#    end
#    return char_cards
#end



def characters(char)

    char_cards =''

    char["photos"].each_slice(5) do |char_group|

        char_cards += '<div class="card-deck">'

        char_group.each do |char|
            char_cards += card(char["img_src"].to_s, char["name"].to_s,  char["full_name"].to_s, char["camera"].to_s, char["rover"].to_s)

        end

        char_cards += "</div> \n\n"

    end

    return char_cards

end

def card(img_src, name, full_name, camera, rover)
            '
            <div class="card mb-3" style="max-width: 540px;">
            <div class="row no-gutters">
            <div class="col-md-4">
                <img src=' + img_src + ' class="card-img" alt=' + name + '>
            </div>
            <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">' + full_name + '</h5>
                <p class="card-text">' + camera + '</p>
                <p class="card-text">' + rover + '</p>
                
            </div>
            </div>
            </div>
        </div>'    
end
   
