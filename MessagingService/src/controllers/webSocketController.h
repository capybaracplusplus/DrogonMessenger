#pragma once

#include <drogon/WebSocketController.h>

class MessageWebSocketController : public drogon::WebSocketController<MessageWebSocketController> {
public:
    void handleNewMessage(const drogon::WebSocketConnectionPtr &,
                          std::string &&,
                          const drogon::WebSocketMessageType &) override;

    void handleNewConnection(const drogon::HttpRequestPtr &,
                             const drogon::WebSocketConnectionPtr &) override;

    void handleConnectionClosed(const drogon::WebSocketConnectionPtr &) override;

    WS_PATH_LIST_BEGIN
        // list path definitions here;
        // WS_PATH_ADD("/path", "filter1", "filter2", ...);
    WS_PATH_LIST_END
};
