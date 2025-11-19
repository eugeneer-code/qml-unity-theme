import QtQuick
import QtQuick.Controls.impl
import QtQuick.Templates as T
import Unity

T.Label {
    id: control
    font.family: "Inter"
    color: {
        if(!enabled) return UnityTheme.palette.labelText
        if(control.UnityStyle.showFocus) return UnityTheme.palette.labelTextFocus
        return UnityTheme.palette.labelText
    }
    opacity: enabled ? 1.0 : 0.4
    font.pixelSize: {
        switch(control.UnityStyle.textStyle){
            case Unity.TextStyle.VeryBig: return 19;
            case Unity.TextStyle.Big: return 14;
            case Unity.TextStyle.Default: return 12;
            case Unity.TextStyle.SemiSmall: return 11;
            case Unity.TextStyle.Small: return 10;
            case Unity.TextStyle.Tiny: return 9;
            default: return 12;
        }
    }
}