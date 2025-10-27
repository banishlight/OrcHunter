

class View {
    public:
        virtual ~View() = default;
        virtual void init();
        virtual void draw();
        virtual void logic();
};