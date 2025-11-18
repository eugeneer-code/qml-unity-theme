#include "UnityStyle.h"

using namespace unity;

UnityStyle::UnityStyle(QObject* parent)
    : QObject(parent),
    _textStyle(3),
    _boldText(false),
    _controlType(0),
    _controlSize(1),
    _buttonForm(0),
    _hasError(false)
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

bool UnityStyle::boldText() const
{
    return _boldText;
}

void UnityStyle::setBoldText(bool bold)
{
    _boldText = bold;
    emit btChanged();
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

int UnityStyle::buttonForm() const
{
    return _buttonForm;
}

void UnityStyle::setButtonForm(int form)
{
    _buttonForm = form;
    emit bfChanged();
}

bool UnityStyle::hasError() const
{
    return _hasError;
}

void UnityStyle::setHasError(bool error)
{
    _hasError = error;
    emit heChanged();
}
