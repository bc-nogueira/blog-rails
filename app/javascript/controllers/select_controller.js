import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

export default class extends Controller {
    connect() {
        new TomSelect(this.element, {
            plugins: {
                "remove_button": {},
                "clear_button": {},
                'dropdown_header': {
                    title: 'Tags'
                }
            },
        });
    }

    disconnect() {
        this.element.tomselect.destroy();
    }
}