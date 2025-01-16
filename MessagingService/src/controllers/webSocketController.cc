#include "webSocketController.h"

using namespace drogon;

void MessageWebSocketController::handleNewMessage(const WebSocketConnectionPtr &wsConnPtr, std::string &&message,
                                                  const WebSocketMessageType &type) {
    // write your application logic here
}

void
MessageWebSocketController::handleNewConnection(const HttpRequestPtr &req, const WebSocketConnectionPtr &wsConnPtr) {
    // write your application logic here
}

void MessageWebSocketController::handleConnectionClosed(const WebSocketConnectionPtr &wsConnPtr) {
    // write your application logic here
}
