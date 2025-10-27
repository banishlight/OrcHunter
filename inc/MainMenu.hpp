#pragma once
#include <View.hpp>



class MainMenu: public View {
    public:
        ~MainMenu() = default;
        void init() override;
        void draw() override;
        void logic() override;
};