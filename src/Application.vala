public class MyApp : Gtk.Application {
    public MyApp () {
        Object(
            application_id: "com.github.GoldenGladier.gtk-hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 500,
            title = _("Hello World Again")
        };

        var button_hello = new Gtk.Button.with_label (_("Click me!")) {
            margin = 50
        };
        button_hello.clicked.connect (() => {
            button_hello.label = _("Hello world!");
            button_hello.sensitive = false;
        });

        var label = new Gtk.Label (_("Hello Again World"));
        
        main_window.add (label);        
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args){
        return new MyApp ().run (args);
    }
}