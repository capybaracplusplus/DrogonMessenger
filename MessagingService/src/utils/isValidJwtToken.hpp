#pragma once

#include <string>
#include <stdexcept>
#include "jwt-cpp/jwt.h"

bool isValidJwtToken(const std::string &access_token, const std::string &SECRET_KEY) noexcept(false) {
    if (access_token.empty()) {
        throw std::runtime_error("access_token is empty");
    }

    auto decoded = jwt::decode(access_token);

    auto verifier = jwt::verify()
            .allow_algorithm(jwt::algorithm::hs256{SECRET_KEY})
            .with_issuer("Capy");
    verifier.verify(decoded);

    return true;
}