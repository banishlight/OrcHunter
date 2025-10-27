#pragma once

class View {
    public:
        virtual ~View() = default;
        virtual void init() = 0;
        virtual void draw() = 0;
        virtual void logic() = 0;
};