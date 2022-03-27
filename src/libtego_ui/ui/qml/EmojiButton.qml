import QtQuick 2.0
import QtQuick.Controls.Styles 1.2

Rectangle {
    id: emojiButton

    signal clickedFunction(var b)

    property var skin_emoji: ["👋","🤚","🖐","✋","🖖","🫱","🫲","🫳","🫴","👌","🤌","🤏","✌","🤞","🫰","🤟-","🤘","🤙","👈","👉","👆","🖕","👇","☝","🫵","👍","👎","✊","👊","🤛-","🤜-","👏","🙌","🫶","👐","🤲","🤝","🙏","✍","💅","🤳","💪","🦵","🦶","👂","🦻","👃","👶","🧒","👦","👧","🧑","👱,","👨","🧔,","🧔‍,","🧔‍,","👨‍🦰,","👨‍🦱,","👨‍🦳,","👨‍🦲,","👩","👩‍🦰,","🧑‍🦰,","👩‍🦱,","🧑‍🦱,","👩‍🦳,","🧑‍🦳,","👩‍🦲,","🧑‍🦲,","👱‍,","👱‍,","🧓","👴","👵","🙍","🙍‍","🙍‍","🙎","🙎‍","🙎‍","🙅","🙅‍","🙅‍","🙆","🙆‍","🙆‍","💁","💁‍","💁‍","🙋","🙋‍","🙋‍","🧏","🧏‍","🧏‍","🙇","🙇‍","🙇‍","🤦","🤦‍","🤦‍","🤷","🤷‍","🤷‍","🧑‍⚕️","👨‍⚕️","👩‍⚕️","🧑‍🎓","👨‍🎓","👩‍🎓","🧑‍🏫","👨‍🏫","👩‍🏫","🧑‍⚖️","👨‍⚖️","👩‍⚖️","🧑‍🌾","👨‍🌾","👩‍🌾","🧑‍🍳","👨‍🍳","👩‍🍳","🧑‍🔧","👨‍🔧","👩‍🔧","🧑‍🏭","👨‍🏭","👩‍🏭","🧑‍💼","👨‍💼","👩‍💼","🧑‍🔬","👨‍🔬","👩‍🔬","🧑‍💻","👨‍💻","👩‍💻","🧑‍🎤","👨‍🎤","👩‍🎤","🧑‍🎨","👨‍🎨","👩‍🎨","🧑‍✈️","👨‍✈️","👩‍✈️","🧑‍🚀","👨‍🚀","👩‍🚀","🧑‍🚒","👨‍🚒","👩‍🚒","👮","👮‍","👮‍","🕵","🕵‍","🕵‍","💂","💂‍","💂‍","🥷","👷","👷‍","👷‍","🫅","🤴","👸","👳","👳‍","👳‍","👲","🧕","🤵","🤵‍","🤵‍","👰","👰‍","👰‍","🤰","🫃","🫄","🤱-","👩‍🍼","👨‍🍼","🧑‍🍼","👼","🎅","🤶.","🧑‍🎄","🦸","🦸‍","🦸‍","🦹","🦹‍","🦹‍","🧙","🧙‍","🧙‍","🧚","🧚‍","🧚‍","🧛","🧛‍","🧛‍","🧜","🧜‍","🧜‍","🧝","🧝‍","🧝‍","💆","💆‍","💆‍","💇","💇‍","💇‍","🚶","🚶‍","🚶‍","🧍","🧍‍","🧍‍","🧎","🧎‍","🧎‍","🧑‍🦯","👨‍🦯","👩‍🦯","🧑‍🦼","👨‍🦼","👩‍🦼","🧑‍🦽","👨‍🦽","👩‍🦽","🏃","🏃‍","🏃‍","💃","🕺","🕴","🧖","🧖‍","🧖‍","🧗","🧗‍","🧗‍","🏇","🏂","🏌","🏌‍","🏌‍","🏄","🏄‍","🏄‍","🚣","🚣‍","🚣‍","🏊","🏊‍","🏊‍","⛹","⛹‍","⛹‍","🏋","🏋‍","🏋‍","🚴","🚴‍","🚴‍","🚵","🚵‍","🚵‍","🤸","🤸‍","🤸‍","🤽","🤽‍","🤽‍","🤾","🤾‍","🤾‍","🤹","🤹‍","🤹‍","🧘","🧘‍","🧘‍","🛀","🛌","👭","👫","👬","💏","💑"]

    /*
    Text {
        id: emojiText
        color: "gray"
        text: skin_emoji.includes(eCatText) ? qsTr(eCatText) + current_skin_selected:qsTr(eCatText)
        font.pixelSize: emojiButton.width - 8
        anchors.centerIn: parent
        font.family: "Noto Emoji"
    }*/

    Text {
        property var emoji: skin_emoji.includes(eCatText) ? eCatText + current_skin_selected:eCatText
        id: emojiText
        textFormat: TextEdit.RichText
        text: replaceEmojiWithImage(emoji)
        font.pixelSize: emojiButton.width - 8
        anchors.centerIn: parent
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
            emojiButton.clickedFunction(emojiText.emoji);
        }
    }

}
