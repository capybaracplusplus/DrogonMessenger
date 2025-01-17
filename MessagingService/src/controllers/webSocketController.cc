#include "webSocketController.h"
#include "../utils/isValidJwtToken.hpp"
#include <nlohmann/json.hpp>
#include "../models/message.hpp"
#include <stdio.h>
#include <time.h>
#include "../services/chatManagerService.hpp"

using namespace drogon;

void writeMessage(const Message &);

void MessageWebSocketController::handleNewMessage(const WebSocketConnectionPtr &wsConnPtr, std::string &&message,
                                                  const WebSocketMessageType &type) try {
    if (message.empty()) {
        LOG_INFO << "message.empty()";
        wsConnPtr->disconnected();
        return;
    }
    nlohmann::json jsonObject = nlohmann::json::parse(message);

    std::string access_token = jsonObject.at("access_token");

    if (!isValidJwtToken(access_token, "secret_key")) {
        wsConnPtr->send(std::string("тут json с объяснением ошибки"));
        return;
    }

    if (jsonObject.at("type") == "writeMessage") {
        auto messageObj = Message::create(
                jsonObject["id"],
                jsonObject.at("chatId"),
                jsonObject.at("fromUserId"),
                jsonObject["toUserId"],
                jsonObject.at("body"),
                time(NULL),
                jsonObject.at("isPing")
        );
        ChatManagerService::writeMessage(messageObj);
    } else {
        throw std::runtime_error("type if not found");
    }

    //input: chatId from ?to? body isPing  - ok
    // обработка
    // записать в бд
    // закинуть сообщение в пул сообщений
    // дернуть сервис уведов если сообщение с пингом
    wsConnPtr->send(std::string("Received message: " + message), type);
} catch (const std::out_of_range &e) {
    LOG_INFO << "message has no required parameters " << e.what();
    wsConnPtr->disconnected();
    return;
} catch (const std::exception &e) {
    LOG_INFO << e.what();
    wsConnPtr->disconnected();
    return;
}

void
MessageWebSocketController::handleNewConnection(const HttpRequestPtr &req, const WebSocketConnectionPtr &wsConnPtr) {
    LOG_INFO << "New WebSocket connection from: " << req->peerAddr().toIpPort();
}

void MessageWebSocketController::handleConnectionClosed(const WebSocketConnectionPtr &wsConnPtr) {
    LOG_INFO << "WebSocket connection closed";
}
