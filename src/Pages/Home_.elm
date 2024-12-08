module Pages.Home_ exposing (page)

import Components.Sidebar
import Html
import Html.Attributes as Attr
import View exposing (View)


page : View msg
page =
    Components.Sidebar.view
        { title = "Homepage"
        , body =
            [ Html.div
                [ Attr.class "flex justify-center font-bold" ]
                [ Html.text "Hello, elm-land 🌈 + Tailwind 💅🏻" ]
            ]
        }
