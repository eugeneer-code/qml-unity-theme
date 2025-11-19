#include "UnityStyle.h"

using namespace unity;

UnityStyle::UnityStyle(QObject* parent)
    : QObject(parent),
    _textStyle(2),
    _controlType(0),
    _controlSize(1),
    _showFocus(false)
{
}

UnityStyle* UnityStyle::qmlAttachedProperties(QObject* object)
{
    return new UnityStyle(object);
}

int UnityStyle::textStyle() const
{
    return _textStyle;
}

void UnityStyle::setTextStyle(int style)
{
    _textStyle = style;
    emit tsChanged();
}

int UnityStyle::controlType() const
{
    return _controlType;
}

void UnityStyle::setControlType(int type)
{
    _controlType = type;
    emit ctChanged();
}

int UnityStyle::controlSize() const
{
    return _controlSize;
}

void UnityStyle::setControlSize(int size)
{
    _controlSize = size;
    emit csChanged();
}

bool UnityStyle::showFocus() const
{
    return _showFocus;
}

void UnityStyle::setShowFocus(bool show)
{
    _showFocus = show;
    emit sfChanged();
}
