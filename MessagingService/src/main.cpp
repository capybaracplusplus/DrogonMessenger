#include <iostream>
#include <drogon/drogon.h>
#include "controllers/webSocketController.h"
#include "filters/authFilter.hpp"


int main() {
    LOG_INFO << "log start";
    LOG_INFO << "Drogon version: " << drogon::getVersion();

    drogon::app().loadConfigFile("../src/config.json");
    LOG_INFO << "log loadConfigFile";

    drogon::app().run();
    return 0;
}
