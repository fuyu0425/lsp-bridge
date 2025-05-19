from core.handler import Handler
from core.utils import *


class Highlight(Handler):
    name = "highlight"
    method = "textDocument/documentHighlight"
    cancel_on_change = True
    provider = "highlight_provider"
    provider_message = "Current server not support highlighting."

    def process_request(self, position) -> dict:
        return dict(position=position)

    def process_response(self, response: dict) -> None:
        # [{'range': {'start': {'line': 5, 'character': 8}, 'end': {'line': 5, 'character': 9}}}]
        print(response)
        if response is not None:
            for range in response:
                r = range["range"]
            eval_in_emacs("lsp-brige-highlight--update", response)
