#include "UnityDesignLibrary.h"
#include <QtQml/QtQml>
#include <QQmlApplicationEngine>
#include "Utils.h"
#include "UnityStyle.h"

void UnityDesignLibrary::initLibrary(QQmlEngine *engine)
{
    // Register C++ classes
    qmlRegisterUncreatableType<unity::UnityStyle>("Unity", 1, 0, "UnityStyle", "Unity attached properties");

    // Init resources from static lib
	Q_INIT_RESOURCE(UnityDesignRes);

    // Define module search path
    engine->addImportPath(":/");

    static unity::Utils utils;
    engine->rootContext()->setContextProperty("_ConstaUtils", &utils);

    qDebug() << "Unity library init done";
}