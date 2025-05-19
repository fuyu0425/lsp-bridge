from core.handler import Handler
from core.utils import *


class RustOpenExternalDoc(Handler):
    name = "rust_open_externl_doc"
    method = "experimental/externalDocs"
    send_document_uri = True

    def process_request(self, position, loc) -> dict:
        self.loc = loc
        return dict(position=position)

    def process_response(self, response) -> None:
        if self.loc == "web":
            pass
        else:  # fallback to 'local'
            pass
