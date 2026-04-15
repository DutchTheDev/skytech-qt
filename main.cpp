#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QIcon>

int main(int argc, char *argv[])
{
    QGuiApplication app(arg argc, argv);
    
    app.setApplicationName("Skytech Panel");
    app.setOrganizationName("Skytech");
    app.setApplicationVersion("1.0.0");
    
    QQuickStyle::setStyle("Material");
    
    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");
    
    engine.load(QUrl("qrc:/qml/main.qml"));
    
    if (engine.rootObjects().isEmpty())
        return -1;
    
    return app.exec();
}