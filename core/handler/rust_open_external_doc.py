from core.handler import Handler
from core.utils import *


class RustOpenExternalDoc(Handler):
    name = "rust_open_external_doc"
    method = "experimental/externalDocs"
    send_document_uri = True

    def process_request(self, position, loc) -> dict:
        self.loc = loc
        return dict(position=position)

    def process_response(self, response) -> None:
        if type(response) is dict and response[self.loc]:
            eval_in_emacs("browse-url", response[self.loc])
        elif response:
            eval_in_emacs("browse-url", response)
