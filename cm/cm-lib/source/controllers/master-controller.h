#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer>
#include <QString>

#include "cm-lib_global.h"
#include "controllers/navigation-controller.h"
#include "controllers/command-controller.h"

namespace cm {
namespace controllers {

class CMLIBSHAPED_LIBRARY MasterController : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString ui_welcomeMessage READ welcomeMessage CONSTANT)
    Q_PROPERTY(cm::controllers::NavigationController* ui_navigationController
               READ navigationController CONSTANT)
    Q_PROPERTY(cm::controllers::CommandController* ui_commandController
               READ commandController CONSTANT)
 public:
    explicit MasterController(QObject* parent = nullptr);
    ~MasterController();
    NavigationController* navigationController();
    CommandController* commandController();
    const QString& welcomeMessage() const;

 private:
    class Implementation;
    QScopedPointer<Implementation> implementation;
};

}
}

#endif  // MASTERCONTROLLER_H
