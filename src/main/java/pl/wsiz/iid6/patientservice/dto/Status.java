package pl.wsiz.iid6.patientservice.dto;

public enum Status {
        NIEZREALIZOWANA(false),
        ZREALIZOWANA(true),
        ZAREZERWOWANA(true);

        boolean doRezerwacji;

        private Status(boolean czyZarezertowany) {
            doRezerwacji = doRezerwacji;
        }
}
