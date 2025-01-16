#include "webSocketController.h"

using namespace drogon;

void MessageWebSocketController::handleNewMessage(const WebSocketConnectionPtr &wsConnPtr, std::string &&message,
                                                  const WebSocketMessageType &type) {
    wsConnPtr->send(message);
}

void
MessageWebSocketController::handleNewConnection(const HttpRequestPtr &req, const WebSocketConnectionPtr &wsConnPtr) {
    LOG_INFO << "New WebSocket connection from: " << req->peerAddr().toIpPort();


}

void MessageWebSocketController::handleConnectionClosed(const WebSocketConnectionPtr &wsConnPtr) {
    LOG_INFO << "WebSocket connection closed";
}
