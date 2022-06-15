module dnit {
    requires javafx.controls;
    requires javafx.fxml;

    opens dnit to javafx.fxml;
    exports dnit;
}
