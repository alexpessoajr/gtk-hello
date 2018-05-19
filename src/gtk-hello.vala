
public class Hello : Gtk.Application {
    
    public Hello () {
        Object (
            application_id: "com.github.alexpessoajr.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        var button_hello = new Gtk.Button.with_label ("Click me!");

        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";

        button_hello.margin = 12;
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World";
            button_hello.sensitive = false;
        });

        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new Hello ();
        return app.run (args);
    }
}
