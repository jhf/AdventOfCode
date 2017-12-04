module Main exposing (..)

import List
import String exposing (toInt)
import Maybe
import Style exposing (..)
import Style.Color as Sc
import Style.Font as Sf
import Color
import Element as E
import Element.Attributes as Ea
import Element.Events as Ev
import Element.Input as Ei
import Element.Keyed as Ek
import Html exposing (Html)
import Random
import Dom
import Task


-- MODEL


type alias Model =
    { }


init : ( Model, Cmd Msg )
init =
    ( { }
    , Cmd.none
    )


subscriptions : a -> Sub Msg
subscriptions model =
    Sub.none



-- Styling


type Styling
    = None
    | Heading


stylesheet : StyleSheet Styling variation
stylesheet =
    Style.styleSheet
        [ Style.style None []
        , Style.style Heading
            [ Sf.size 22 ]
        ]



-- UPDATE


type Msg
    = Nothing


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Nothing ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    E.layout stylesheet <|
        E.screen <|
            E.row None
                [ Ea.width <| Ea.percent 100
                , Ea.height <| Ea.percent 100
                , Ea.verticalCenter
                , Ea.center
                ]
                [  E.column None
                        []
                        [ E.el Heading [] (E.text "Advent Of Code 2017")
                         , E.el None [] (E.text "Day 1")
                         , E.el None [] (E.text "Day 2")
                         , E.el None [] (E.text "Day 3")
                         ]
                ]

