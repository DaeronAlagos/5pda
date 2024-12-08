module Components.Sidebar exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Svg exposing (path, svg)
import Svg.Attributes as SvgAttr
import View exposing (View)


view :
    { title : String
    , body : List (Html msg)
    }
    -> View msg
view props =
    { title = props.title
    , body =
        [ div []
            [ input [ type_ "checkbox", id "siderbar-toggle", class "hidden peer" ]
                [ label [ for "sidebar-toggle", class "fixed top-4 left-4 z-50 cursor-pointer" ]
                    [ text "Toggle sidebar" ]
                ]
            , aside [ class "fixed top-0 left-0 h-full w-64 bg-white shadow-lg transform -translate-x-full transition-transform duration-300 ease-in-out peer-checked:translate-x-0" ]
                [ div [ class "h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800" ]
                    [ ul [ class "space-y-2 font-medium" ]
                        [ li []
                            [ a [ class "flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group" ]
                                [ span [ class "ms-3" ]
                                    [ text "Dashboard" ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    }
