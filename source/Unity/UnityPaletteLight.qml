import QtQuick

/**
 * Colors definition for Light theme
 */
QtObject {
    // Window background colors
    property color defaultBackground: "#A5A5A5"
    property color highlightBackgroundInactive: "#AEAEAE"
    property color highlightBackground: "#3A72B0"
    property color highlightBackgroundHover: _ConstaUtils.alpha("#000", 0.062)
    property color highlightBackgroundHoverLighter: "#9A9A9A"
    property color windowBackground: "#C8C8C8"
    property color altRowsBackground: "#CACACA"

    // Window border
    property color toolbarBorder: "#999999"
    property color windowBorder: "#939393"
    property color defaultBorder: "#999999"

    // Inspector
    property color titlebarBackground: "#CBCBCB"
    property color titlebarBackgroundHover: "#D6D6D6"
    property color toolbarBackground: "#CBCBCB"
    property color titlebarBorder: "#7F7F7F"
    property color titlebarBorderAccent: "#BABABA"

    // App toolbar
    property color appToolbarBackground: "#8A8A8A"
    property color appToolbarButtonBackground: "#C8C8C8"
    property color appToolbarButtonBackgroundChecked: "#656565"
    property color appToolbarButtonBackgroundHover: "#BBBBBB"
    property color appToolbarButtonBackgroundPressed: "#656565"
    property color appToolbarButtonBorder: "#6B6B6B"
    property color appToolbarButtonBorderAccent: "#6B6B6B"

    // Toolbar
    property color toolbarButtonBackground: "#CBCBCB"
    property color toolbarButtonBackgroundChecked: "#EFEFEF"
    property color toolbarButtonBackgroundFocus: "#C1C1C1"
    property color toolbarButtonBackgroundHover: "#C1C1C1"
    property color toolbarButtonBorder: "#999999"
    property color toolbarButtonText: "#090909"
    property color toolbarButtonTextChecked: "#090909"
    property color toolbarButtonTextHover: "#090909"

    // Buttons
    property color buttonBackground: "#E4E4E4"
    property color buttonBackgroundFocus: "#BEBEBE"
    property color buttonBackgroundHover: "#ECECEC"
    property color buttonBackgroundHoverPressed: "#B0D2FC"
    property color buttonBackgroundPressed: "#96C3FB"
    property color buttonBorder: "#B2B2B2"
    property color buttonBorderAccent: "#939393"
    property color buttonBorderAccentFocus: "#018CFF"
    property color buttonBorderPressed: "#707070"
    property color buttonText: "#090909"

    // Dropdowns
    property color dropdownBackground: "#DFDFDF"
    property color dropdownBackgroundHover: "#E4E4E4"
    property color dropdownBorder: "#B2B2B2"
    property color dropdownBorderAccent: "#939393"

    // Input fields
    property color inputBackground: "#F0F0F0"
    property color inputBorder: "#B7B7B7"
    property color inputBorderAccent: "#A0A0A0"
    property color inputBorderFocus: "#1D5087"
    property color inputBorderHover: "#6C6C6C"

    // Labels
    property color labelText: "#090909"
    property color labelTextFocus: "#81B4FF"

    // Scrollbars
    property color scrollbarButtonBackground: _ConstaUtils.alpha("#000", 0.05)
    property color scrollbarButtonBackgroundHover: "#A7A7A7"
    property color scrollbarGrooveBackground: _ConstaUtils.alpha("#000", 0.05)
    property color scrollbarGrooveBorder: _ConstaUtils.alpha("#000", 0.1)
    property color scrollbarThumbBackground: "#9A9A9A"
    property color scrollbarThumbBackgroundHover: "#8E8E8E"
    property color scrollbarThumbBorder: "#B9B9B9"
    property color scrollbarThumbBorderHover: "#8E8E8E"

    // Sliders
    property color sliderGrooveBackground: "#8F8F8F"
    property color sliderGrooveBackgroundDisabled: "#A4A4A4"
    property color sliderThumbBackground: "#616161"
    property color sliderThumbBackgroundDisabled: "#9B9B9B"
    property color sliderThumbBackgroundHover: "#4F4F4F"
    property color sliderThumbBorder: "#616161"
    property color sliderThumbBorderDisabled: "#9B9B9B"
    property color sliderThumbHaloBackground: _ConstaUtils.alpha("#0C6CCB", 0.5)

    // Tabs
    property color tabBackground: "#B6B6B6"
    property color tabBackgroundChecked: "#CBCBCB"
    property color tabBackgroundHover: "#B0B0B0"
    property color tabText: "#090909"
    property color tabHighlightBackground: "#3A72B0"

    // Tooltip
    property color tooltipBackground: "#DEDEDE"
    property color tooltipBorder: "#8A8A8A"

    // Text
    property color defaultText: "#090909"
    property color defaultTextHover: "#090909"
    property color errorText: "#5A0000"
    property color liknText: "#4C7EFF"
    property color visitedLinkText: "#AA00AA"
    property color warningText: "#333308"
    property color helpboxText: "#161616"
    property color highlightText: "#0032E6"
    property color highlightTextInactive: "#FFFFFF"
    property color previewOverlayText: "#FFFFFF"
    property color windowText: "#090909"
}