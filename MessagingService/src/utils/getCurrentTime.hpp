#pragma once

#include <chrono>
#include <iomanip>
#include <sstream>
#include <string>
#include <ctime>

std::string getCurrentTimeISO8601() {
    // Получаем текущее время в формате time_point
    auto now = std::chrono::system_clock::now();

    // Преобразуем time_point в time_t
    std::time_t now_time_t = std::chrono::system_clock::to_time_t(now);

    // Преобразуем time_t в структуру tm
    std::tm now_tm = *std::gmtime(&now_time_t);

    // Форматируем дату и время в строку
    std::ostringstream oss;
    oss << std::put_time(&now_tm, "%Y-%m-%dT%H:%M:%SZ");

    return oss.str();
}
