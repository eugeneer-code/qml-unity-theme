import QtQuick

/**
 * Colors definition for Dark theme
 */
QtObject {
    // Window background colors
    property color defaultBackground: "#282828"
    property color highlightBackgroundInactive: "#4D4D4D"
    property color highlightBackground: "#2C5D87"
    property color highlightBackgroundHover: _ConstaUtils.alpha("#FFF", 0.06)
    property color highlightBackgroundHoverLighter: "#5F5F5F"
    property color windowBackground: "#383838"
    property color altRowsBackground: "#3F3F3F"

    // Window border
    property color toolbarBorder: "#232323"
    property color windowBorder: "#242424"
    property color defaultBorder: "#232323"

    // Inspector
    property color titlebarBackground: "#3E3E3E"
    property color titlebarBackgroundHover: "#474747"
    property color toolbarBackground: "#3C3C3C"
    property color titlebarBorder: "#1A1A1A"
    property color titlebarBorderAccent: "#303030"

    // App toolbar
    property color appToolbarBackground: "#191919"
    property color appToolbarButtonBackground: "#383838"
    property color appToolbarButtonBackgroundChecked: "#6A6A6A"
    property color appToolbarButtonBackgroundHover: "#424242"
    property color appToolbarButtonBackgroundPressed: "#6A6A6A"
    property color appToolbarButtonBorder: "#191919"
    property color appToolbarButtonBorderAccent: "#222222"

    // Toolbar
    property color toolbarButtonBackground: "#3C3C3C"
    property color toolbarButtonBackgroundChecked: "#505050"
    property color toolbarButtonBackgroundFocus: "#464646"
    property color toolbarButtonBackgroundHover: "#464646"
    property color toolbarButtonBorder: "#232323"
    property color toolbarButtonText: "#C4C4C4"
    property color toolbarButtonTextChecked: "#C4C4C4"
    property color toolbarButtonTextHover: "#DBDBDB"

    // Buttons
    property color buttonBackground: "#585858"
    property color buttonBackgroundFocus: "#6E6E6E"
    property color buttonBackgroundHover: "#676767"
    property color buttonBackgroundHoverPressed: "#4F657F"
    property color buttonBackgroundPressed: "#46607C"
    property color buttonBorder: "#303030"
    property color buttonBorderAccent: "#242424"
    property color buttonBorderAccentFocus: "#7BAEFA"
    property color buttonBorderPressed: "#0D0D0D"
    property color buttonText: "#EEEEEE"

    // Dropdowns
    property color dropdownBackground: "#515151"
    property color dropdownBackgroundHover: "#585858"
    property color dropdownBorder: "#303030"
    property color dropdownBorderAccent: "#242424"

    // Input fields
    property color inputBackground: "#2A2A2A"
    property color inputBorder: "#212121"
    property color inputBorderAccent: "#0D0D0D"
    property color inputBorderFocus: "#3A79BB"
    property color inputBorderHover: "#656565"

    // Labels
    property color labelText: "#C4C4C4"
    property color labelTextFocus: "#81B4FF"

    // Scrollbars
    property color scrollbarButtonBackground: _ConstaUtils.alpha("#000", 0.05)
    property color scrollbarButtonBackgroundHover: "#494949"
    property color scrollbarGrooveBackground: _ConstaUtils.alpha("#000", 0.05)
    property color scrollbarGrooveBorder: _ConstaUtils.alpha("#000", 0.1)
    property color scrollbarThumbBackground: "#5F5F5F"
    property color scrollbarThumbBackgroundHover: "#686868"
    property color scrollbarThumbBorder: "#323232"
    property color scrollbarThumbBorderHover: "#686868"

    // Sliders
    property color sliderGrooveBackground: "#5E5E5E"
    property color sliderGrooveBackgroundDisabled: "#575757"
    property color sliderThumbBackground: "#999999"
    property color sliderThumbBackgroundDisabled: "#666666"
    property color sliderThumbBackgroundHover: "#EAEAEA"
    property color sliderThumbBorder: "#999999"
    property color sliderThumbBorderDisabled: "#666666"
    property color sliderThumbHaloBackground: _ConstaUtils.alpha("#106FCD", 0.5)

    // Tabs
    property color tabBackground: "#353535"
    property color tabBackgroundChecked: "#3C3C3C"
    property color tabBackgroundHover: "#303030"
    property color tabText: "#BDBDBD"
    property color tabHighlightBackground: "#2C5D87"

    // Tooltip
    property color tooltipBackground: "#373737"
    property color tooltipBorder: "#191919"

    // Text
    property color defaultText: "#D2D2D2"
    property color defaultTextHover: "#BDBDBD"
    property color errorText: "#D32222"
    property color liknText: "#4C7EFF"
    property color visitedLinkText: "#FF00FF"
    property color warningText: "#F4BC02"
    property color helpboxText: "#BDBDBD"
    property color highlightText: "#4C7EFF"
    property color highlightTextInactive: "#FFFFFF"
    property color previewOverlayText: "#DEDEDE"
    property color windowText: "#BDBDBD"

    property Gradient borderGradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.0; color: UnityTheme.palette.buttonBorder }
        GradientStop { position: 0.86; color: UnityTheme.palette.buttonBorder }
        GradientStop { position: 0.94; color: UnityTheme.palette.buttonBorderAccent }
        GradientStop { position: 1.0; color: UnityTheme.palette.buttonBorderAccent }
    }
    property Gradient borderPressedGradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.0; color: UnityTheme.palette.buttonBorderPressed }
        GradientStop { position: 0.05; color: UnityTheme.palette.buttonBorderPressed }
        GradientStop { position: 0.11; color: UnityTheme.palette.buttonBorderAccent }
        GradientStop { position: 1.0; color: UnityTheme.palette.buttonBorderAccent }
    }
}