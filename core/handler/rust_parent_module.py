from core.handler import Handler
from core.utils import *


class RustParentModule(Handler):
    name = "rust_parent_module"
    method = "experimental/parentModule"
    send_document_uri = True

    def process_request(self, position) -> dict:
        return dict(position=position)

    def process_response(self, response) -> None:
        if response:
            location_link = response[0]
            uri = location_link["uri"] if "uri" in location_link else location_link["targetUri"]
            filepath = uri_to_path(uri)
            range = location_link["range"] if "range" in location_link else location_link["targetRange"]
            eval_in_emacs("lsp-bridge-define--jump", filepath, get_lsp_file_host(), range['start'])


class RustOpenCargoToml(Handler):
    name = "rust_open_cargo_toml"
    method = "experimental/openCargoToml"
    send_document_uri = True

    def process_request(self) -> dict:
        return dict()

    def process_response(self, response) -> None:
        if response:
            location_link = response
            uri = location_link["uri"] if "uri" in location_link else location_link["targetUri"]
            filepath = uri_to_path(uri)
            range = location_link["range"] if "range" in location_link else location_link["targetRange"]
            eval_in_emacs("lsp-bridge-define--jump", filepath, get_lsp_file_host(), range['start'])
