#ifndef QML_UNITY_THEME_UNITYSTYLE_H
#define QML_UNITY_THEME_UNITYSTYLE_H
#include <QObject>
#include <QtQml>

namespace unity {

class UnityStyle : public QObject {
    Q_OBJECT
    Q_PROPERTY(int textStyle READ textStyle WRITE setTextStyle NOTIFY tsChanged)
    Q_PROPERTY(bool boldText READ boldText WRITE setBoldText NOTIFY btChanged)
    Q_PROPERTY(int controlType READ controlType WRITE setControlType NOTIFY ctChanged)
    Q_PROPERTY(int controlSize READ controlSize WRITE setControlSize NOTIFY csChanged)
    Q_PROPERTY(int buttonForm READ buttonForm WRITE setButtonForm NOTIFY bfChanged)
    Q_PROPERTY(bool hasError READ hasError WRITE setHasError NOTIFY heChanged)

signals:
    void tsChanged();
    void btChanged();
    void ctChanged();
    void csChanged();
    void bfChanged();
    void heChanged();

public:
    UnityStyle(QObject* parent = nullptr);

    static UnityStyle* qmlAttachedProperties(QObject* object);

    int textStyle() const;
    void setTextStyle(int style);

    bool boldText() const;
    void setBoldText(bool bold);

    int controlType() const;
    void setControlType(int type);

    int controlSize() const;
    void setControlSize(int size);

    int buttonForm() const;
    void setButtonForm(int form);

    bool hasError() const;
    void setHasError(bool error);

private:
    int _textStyle;
    bool _boldText;
    int _controlType;
    int _controlSize;
    int _buttonForm;
    bool _hasError;
};

}

QML_DECLARE_TYPEINFO(unity::UnityStyle, QML_HAS_ATTACHED_PROPERTIES)

#endif //QML_UNITY_THEME_UNITYSTYLE_H
