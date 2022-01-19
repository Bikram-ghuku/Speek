import QtQuick 2.0
import QtQuick.Controls.Styles 1.2

Rectangle {
    id: emojiButton

    //FontLoader { id: localFont; source: "file:///home/jesus/Downloads/ricochet-refresh-main/pp/src/ricochet-refresh/build/release/tego_ui/NotoColorEmoji.ttf" }

    signal clickedFunction(var b)

    property var skin_emoji: ["👋","🤚","🖐","✋","🖖","🫱","🫲","🫳","🫴","👌","🤌","🤏","✌","🤞","🫰","🤟-","🤘","🤙","👈","👉","👆","🖕","👇","☝","🫵","👍","👎","✊","👊","🤛-","🤜-","👏","🙌","🫶","👐","🤲","🤝","🙏","✍","💅","🤳","💪","🦵","🦶","👂","🦻","👃","👶","🧒","👦","👧","🧑","👱,","👨","🧔,","🧔‍,","🧔‍,","👨‍🦰,","👨‍🦱,","👨‍🦳,","👨‍🦲,","👩","👩‍🦰,","🧑‍🦰,","👩‍🦱,","🧑‍🦱,","👩‍🦳,","🧑‍🦳,","👩‍🦲,","🧑‍🦲,","👱‍,","👱‍,","🧓","👴","👵","🙍","🙍‍","🙍‍","🙎","🙎‍","🙎‍","🙅","🙅‍","🙅‍","🙆","🙆‍","🙆‍","💁","💁‍","💁‍","🙋","🙋‍","🙋‍","🧏","🧏‍","🧏‍","🙇","🙇‍","🙇‍","🤦","🤦‍","🤦‍","🤷","🤷‍","🤷‍","🧑‍⚕️","👨‍⚕️","👩‍⚕️","🧑‍🎓","👨‍🎓","👩‍🎓","🧑‍🏫","👨‍🏫","👩‍🏫","🧑‍⚖️","👨‍⚖️","👩‍⚖️","🧑‍🌾","👨‍🌾","👩‍🌾","🧑‍🍳","👨‍🍳","👩‍🍳","🧑‍🔧","👨‍🔧","👩‍🔧","🧑‍🏭","👨‍🏭","👩‍🏭","🧑‍💼","👨‍💼","👩‍💼","🧑‍🔬","👨‍🔬","👩‍🔬","🧑‍💻","👨‍💻","👩‍💻","🧑‍🎤","👨‍🎤","👩‍🎤","🧑‍🎨","👨‍🎨","👩‍🎨","🧑‍✈️","👨‍✈️","👩‍✈️","🧑‍🚀","👨‍🚀","👩‍🚀","🧑‍🚒","👨‍🚒","👩‍🚒","👮","👮‍","👮‍","🕵","🕵‍","🕵‍","💂","💂‍","💂‍","🥷","👷","👷‍","👷‍","🫅","🤴","👸","👳","👳‍","👳‍","👲","🧕","🤵","🤵‍","🤵‍","👰","👰‍","👰‍","🤰","🫃","🫄","🤱-","👩‍🍼","👨‍🍼","🧑‍🍼","👼","🎅","🤶.","🧑‍🎄","🦸","🦸‍","🦸‍","🦹","🦹‍","🦹‍","🧙","🧙‍","🧙‍","🧚","🧚‍","🧚‍","🧛","🧛‍","🧛‍","🧜","🧜‍","🧜‍","🧝","🧝‍","🧝‍","💆","💆‍","💆‍","💇","💇‍","💇‍","🚶","🚶‍","🚶‍","🧍","🧍‍","🧍‍","🧎","🧎‍","🧎‍","🧑‍🦯","👨‍🦯","👩‍🦯","🧑‍🦼","👨‍🦼","👩‍🦼","🧑‍🦽","👨‍🦽","👩‍🦽","🏃","🏃‍","🏃‍","💃","🕺","🕴","🧖","🧖‍","🧖‍","🧗","🧗‍","🧗‍","🏇","🏂","🏌","🏌‍","🏌‍","🏄","🏄‍","🏄‍","🚣","🚣‍","🚣‍","🏊","🏊‍","🏊‍","⛹","⛹‍","⛹‍","🏋","🏋‍","🏋‍","🚴","🚴‍","🚴‍","🚵","🚵‍","🚵‍","🤸","🤸‍","🤸‍","🤽","🤽‍","🤽‍","🤾","🤾‍","🤾‍","🤹","🤹‍","🤹‍","🧘","🧘‍","🧘‍","🛀","🛌","👭","👫","👬","💏","💑"]

    Text {
        id: emojiText
        color: "gray"
        text: skin_emoji.includes(eCatText) ? qsTr(eCatText) + current_skin_selected:qsTr(eCatText)
        font.pixelSize: emojiButton.width - 8
        anchors.centerIn: parent
        font.family: "Noto Emoji"
    }


    state: "RELEASED"
    states: [
        State {
            name: "PRESSED"
            PropertyChanges {
                target: emojiText
                font.pixelSize: emojiButton.width - 10
            }
        },
        State {
            name: "RELEASED"
            PropertyChanges {
                target: emojiText
                font.pixelSize: emojiButton.width - 8
            }
        }
    ]


    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            emojiText.color = "black"
        }
        onExited: {
            emojiText.color = "gray"
        }
        onPressedChanged: {
            emojiButton.state = emojiButton.state == "PRESSED" ? "RELEASED" :  "PRESSED"
        }
        onClicked: {
            //Qt.emojiClickedHandler(emojiText.text)
            emojiButton.clickedFunction(emojiText.text);
        }
    }

}
