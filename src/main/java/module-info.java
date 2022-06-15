module dnit {
    requires javafx.controls;
    requires javafx.fxml;
    requires transitive javafx.graphics;

    opens dnit to javafx.fxml;
    exports dnit;
}
