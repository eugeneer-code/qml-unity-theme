#ifndef QML_UNITY_THEME_UNITYSTYLE_H
#define QML_UNITY_THEME_UNITYSTYLE_H
#include <QObject>
#include <QtQml>

namespace unity {

class UnityStyle : public QObject {
    Q_OBJECT
    Q_PROPERTY(int textStyle READ textStyle WRITE setTextStyle NOTIFY tsChanged)
    Q_PROPERTY(int controlType READ controlType WRITE setControlType NOTIFY ctChanged)
    Q_PROPERTY(int controlSize READ controlSize WRITE setControlSize NOTIFY csChanged)
    Q_PROPERTY(bool showFocus READ showFocus WRITE setShowFocus NOTIFY sfChanged)

signals:
    void tsChanged();
    void ctChanged();
    void csChanged();
    void sfChanged();

public:
    UnityStyle(QObject* parent = nullptr);

    static UnityStyle* qmlAttachedProperties(QObject* object);

    int textStyle() const;
    void setTextStyle(int style);

    int controlType() const;
    void setControlType(int type);

    int controlSize() const;
    void setControlSize(int size);

    bool showFocus() const;
    void setShowFocus(bool show);

private:
    int _textStyle;
    int _controlType;
    int _controlSize;
    bool _showFocus;
};

}

QML_DECLARE_TYPEINFO(unity::UnityStyle, QML_HAS_ATTACHED_PROPERTIES)

#endif //QML_UNITY_THEME_UNITYSTYLE_H
