;;; acm-icon.el --- Icon for acm  -*- lexical-binding: t -*-

;; Filename: acm-icon.el
;; Description: Icon for acm
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2022, Andy Stewart, all rights reserved.
;; Created: 2022-06-07 21:41:25
;; Version: 0.1
;; Last-Updated: 2022-06-07 21:41:25
;;           By: Andy Stewart
;; URL: https://www.github.org/manateelazycat/acm-icon
;; Keywords:
;; Compatibility: GNU Emacs 28.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Icon for acm
;;

;;; Installation:
;;
;; Put acm-icon.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'acm-icon)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET acm-icon RET
;;

;;; Change log:
;;
;; 2022/06/07
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:

(defvar acm-icon-collections
  '(("bootstrap" . "https://icons.getbootstrap.com/icons/%s.svg")
    ("material" . "https://raw.githubusercontent.com/Templarian/MaterialDesign/master/svg/%s.svg")
    ("octicons" . "https://raw.githubusercontent.com/primer/octicons/master/icons/%s-24.svg")
    ("boxicons" . "https://boxicons.com/static/img/svg/regular/bx-%s.svg")))

;; Search icon from https://pictogrammers.com/library/mdi/icon/
(defvar acm-icon-alist
  `(("unknown" . ("material" "emoticon-lol-outline" "#74d2e7"))
    ("text" . ("material" "format-text" "#98c807"))
    ("method" . ("material" "cube" "#da1884"))
    ("function" . ("material" "lambda" "#ff6a00"))
    ("fun" . ("material" "lambda" "#0abf53"))
    ("constructor" . ("material" "all-inclusive" "#7ac143"))
    ("search" . ("material" "magnify" "#7ac143"))
    ("ctor" . ("material" "cube" "#b84592"))
    ("field" . ("material" "pound" "#ff6c5f"))
    ("variable" . ("material" "angle-acute" "#00b2a9"))
    ("var" . ("material" "angle-acute" "#e04646"))
    ("class" . ("material" "abugida-devanagari" "#ef5734"))
    ("interface" . ("material" "abjad-hebrew" "#6cbc35"))
    ("i/f" . ("material" "abjad-hebrew" "#ee3322"))
    ("module" . ("material" "alpha-m-box-outline" "#00c4cc"))
    ("mod" . ("material" "alpha-m-box-outline" "#ff6908"))
    ("property" . ("material" "alpha-p-box-outline" "#bf033b"))
    ("prop" . ("material" "alpha-p-box-outline" "#0eb24e"))
    ("unit" . ("material" "alpha-u-box-outline" "#98c807"))
    ("value" . ("material" "alpha-v-box-outline" "#ff0092"))
    ("enum" . ("material" "alpha-e-box-outline" "#dc5034"))
    ("keyword" . ("material" "alpha-k-box-outline" "#0085c3"))
    ("k/w" . ("material" "alpha-k-box-outline" "#ed6856"))
    ("key" . ("material" "alpha-k-box-outline" "#0085c3"))
    ("snippet" . ("material" "dna" "#f05d21"))
    ("yas-snippet" . ("material" "dna" "#f05d21"))
    ("template" . ("material" "dna" "#207c88"))
    ("sn" . ("material" "dna" "#f69653"))
    ("color" . ("material" "format-color-highlight" "#099d84"))
    ("face" . ("material" "format-color-highlight" "#98c807"))
    ("file" . ("material" "paperclip" "#e30061"))
    ("reference" . ("material" "link-variant" "#954a97"))
    ("ref" . ("material" "link-variant" "#006e96"))
    ("folder" . ("material" "tree" "#f56040"))
    ("dir" . ("material" "tree" "#d25238"))
    ("enum-member" . ("material" "google-circles-extended" "#ff9900"))
    ("enummember" . ("material" "google-circles-extended" "#8a8acb"))
    ("member" . ("material" "guitar-pick" "#e55e5e"))
    ("constant" . ("material" "pi" "#d1de3f"))
    ("const" . ("material" "pi" "#f65314"))
    ("struct" . ("material" "abugida-thai" "#96cbb3"))
    ("event" . ("material" "post-lamp" "#e990ab"))
    ("operator" . ("material" "plus-minus-variant" "#f47b7b"))
    ("op" . ("material" "plus-minus-variant" "#eb0973"))
    ("type-parameter" . ("material" "comma" "#39a6dd"))
    ("typeparameter" . ("material" "comma" "#dc5034"))
    ("param" . ("material" "comma" "#ff0e83"))
    ("macro" . ("material" "bat" "#ff9900"))
    ("translate" . ("material" "translate" "#98c807"))
    ("emmet abbreviation" . ("material" "arrow-expand" "#98c807"))
    ("custom" . ("material" "unicorn-variant" "#ed6856"))
    ("special form" . ("material" "sawtooth-wave" "#0abf53"))
    ("feature" . ("material" "feather" "#00c4cc"))
    ("at" . ("material" "at" "#0085c3"))
    ("port" . ("material" "alphabet-tengwar" "#39a6dd"))
    ("net" . ("material" "ethereum" "#ed6856"))
    ("register" . ("material" "map-marker-outline" "#ff6908"))
    ("block" . ("material" "alpha-b-box-outline" "#96cbb3"))
    ("prototype" . ("material" "source-commit-start" "#0085c3"))
    ("instance" . ("material" "gamepad-circle-left" "#da1884"))
    ("task" . ("material" "clock-fast" "#e22272"))
    ("typedef" . ("material" "zodiac-leo" "#bf11b6"))
    ("tailwind" . ("material" "creation" "#39a6dd"))
    ("namespace" . ("material" "alpha-n-box-outline" "#dc5034"))
    ("package" . ("material" "poker-chip" "#dc5034"))
    ("string" . ("material" "alphabet-greek" "#98c807"))
    ("number" . ("material" "abjad-arabic" "#98c807"))
    ("boolean" . ("material" "gate-or" "#98c807"))
    ("array" . ("material" "sigma" "#0085c3"))
    ("object" . ("material" "zodiac-taurus" "#0085c3"))
    ("null" . ("material" "spider" "##98c807"))
    ("tabnine" . ("material" "alpha-t-box-outline" "#954a97"))
    ("codeium" . ("material" "alpha-c-box-outline" "#09b6a2"))
    ("note" . ("material" "note" "#77aa99"))
    ("capf" . ("material" "infinity" "#f47b7b"))
    ("jupyter" . ("material" "exponent" "#f47b7b"))
    ("copilot" . ("octicons" "copilot" "#808080"))
    ("workspace-symbol" . ("material" "shark-fin-outline" "#0085c3"))
    (t . ("material" "smoking-pipe" "#90cef1"))))

(defvar acm-icon-cache (make-hash-table :test 'equal))
(defvar acm-icon-dir (expand-file-name "icons" (file-name-directory load-file-name)))
(defvar acm-icon-width 4)

;; FIXME: GUI too
(defvar acm-icon-nerd-alist
  '(("Function" . " 󰡱 ")
    ("Keyword" . "  ")
    ("Special Form" . "  ")
    ("Module" . "  ")
    ("Method" . "  ")
    ("Struct" . "  ")
    ("Snippet" . "  ")
    ("Text" . "  ")
    ("Variable" . " 󰫧 ")
    ("Class" . "  ")
    ("Custom" . "  ")
    ("Feature" . " 󰯺 ")
    ("Macro" . " 󰰏 ")
    ("Interface" . "  ")
    ("Constant" . "  ")
    ("Field" . "  ")
    ("Copilot". "  ")
    )
  "Annotation icons with nerd-font.")

(defcustom acm-icon-enable-nerd-icon t
  "Enable nerd icon display instead of svg, default false."
  :type 'boolean
  :group 'acm-icon)

(defun acm-icon-filepath (collection name)
  (concat (file-name-as-directory acm-icon-dir) (format "%s_%s.svg" collection name)))

(defun acm-icon-fetch-all ()
  (interactive)
  (dolist (icon acm-icon-alist)
    (let* ((collection (nth 0 (cdr icon)))
           (name (nth 1 (cdr icon)))
           (url (format (cdr (assoc collection acm-icon-collections)) name))
           (filename (acm-icon-filepath collection name)))
      (with-temp-buffer
        (url-insert-file-contents url)
        (write-region (point-min) (point-max) filename)))))

(defun acm-icon-parse (collection name)
  (with-temp-buffer
    (insert-file-contents (acm-icon-filepath collection name))
    (xml-parse-region (point-min) (point-max))))

(defun acm-icon-convert-to-svg-color (color-name)
  "Convert Emacs COLOR-NAME to #rrggbb form.
If COLOR-NAME is unknown to Emacs, then return COLOR-NAME as-is."
  (let ((rgb-color (color-name-to-rgb color-name)))
    (if rgb-color
        (apply #'color-rgb-to-hex (append rgb-color '(2)))
      color-name)))

(defun acm-icon (collection name fg-color)
  (let* ((root (acm-icon-parse collection name))

         ;; Read original viewbox
         (viewbox (cdr (assq 'viewBox (xml-node-attributes (car root)))))
         (viewbox (mapcar 'string-to-number (split-string viewbox)))
         (view-x (nth 0 viewbox))
         (view-y (nth 1 viewbox))
         (view-width (nth 2 viewbox))
         (view-height (nth 3 viewbox))

         ;; Set icon size (in pixels) to 4x1 characters
         (svg-width  (* (frame-char-width)  acm-icon-width))
         (svg-height (* (frame-char-height) 1))

         (svg-viewbox (format "%f %f %f %f" view-x view-y view-width view-height))
         (fg-color (acm-icon-convert-to-svg-color
                    (or (when (facep fg-color)
                          (face-foreground fg-color nil t))
                        fg-color (face-attribute 'default :foreground))))
         (svg (svg-create svg-width svg-height
                          :viewBox svg-viewbox
                          :stroke-width 0
                          :fill fg-color)))

    (dolist (item (xml-get-children (car root) 'path))
      (let* ((attrs (xml-node-attributes item))
             (path (cdr (assoc 'd attrs)))
             (fill (or (cdr (assoc 'fill attrs)) fg-color)))
        (svg-node svg 'path :d path :fill fill)))
    (svg-image svg :ascent 'center :scale 1)))

(defun acm-icon-build (collection name fg-color)
  (if (and acm-enable-icon
           (image-type-available-p 'svg))
      (let* ((icon-key (format "%s_%s" collection name))
             (icon-text (gethash icon-key acm-icon-cache)))
        (unless icon-text
          (setq icon-text (propertize
                           (apply #'concat (make-list acm-icon-width "-"))
                           'display (acm-icon collection name fg-color)))
          (puthash icon-key icon-text acm-icon-cache))
        icon-text)
    ""))

;; NOTE: modified from nerd-icons-corfu.el
(defcustom acm-nerd-icons-mapping
  '((array :style "cod" :icon "symbol_array" :face font-lock-type-face)
    (boolean :style "cod" :icon "symbol_boolean" :face font-lock-builtin-face)
    (class :style "cod" :icon "symbol_class" :face font-lock-type-face)
    (color :style "cod" :icon "symbol_color" :face success)
    (command :style "cod" :icon "terminal" :face default)
    (constant :style "cod" :icon "symbol_constant" :face font-lock-constant-face)
    (constructor :style "cod" :icon "triangle_right" :face font-lock-function-name-face)
    (enummember :style "cod" :icon "symbol_enum_member" :face font-lock-builtin-face)
    (enum-member :style "cod" :icon "symbol_enum_member" :face font-lock-builtin-face)
    (enum :style "cod" :icon "symbol_enum" :face font-lock-builtin-face)
    (event :style "cod" :icon "symbol_event" :face font-lock-warning-face)
    (field :style "cod" :icon "symbol_field" :face font-lock-variable-name-face)
    (file :fn nerd-icons-icon-for-file :face font-lock-string-face)
    (folder :fn nerd-icons-icon-for-dir :face font-lock-string-face)
    (interface :style "cod" :icon "symbol_interface" :face font-lock-type-face)
    (keyword :style "cod" :icon "symbol_keyword" :face font-lock-keyword-face)
    (macro :style "cod" :icon "symbol_misc" :face font-lock-keyword-face)
    (magic :style "cod" :icon "wand" :face font-lock-builtin-face)
    (method :style "cod" :icon "symbol_method" :face font-lock-function-name-face)
    (function :style "cod" :icon "symbol_method" :face font-lock-function-name-face)
    (module :style "cod" :icon "file_submodule" :face font-lock-preprocessor-face)
    (numeric :style "cod" :icon "symbol_numeric" :face font-lock-builtin-face)
    (operator :style "cod" :icon "symbol_operator" :face font-lock-comment-delimiter-face)
    (param :style "cod" :icon "symbol_parameter" :face default)
    (property :style "cod" :icon "symbol_property" :face font-lock-variable-name-face)
    (reference :style "cod" :icon "references" :face font-lock-variable-name-face)
    (snippet :style "cod" :icon "symbol_snippet" :face font-lock-string-face)
    (string :style "cod" :icon "symbol_string" :face font-lock-string-face)
    (struct :style "cod" :icon "symbol_structure" :face font-lock-variable-name-face)
    (text :style "cod" :icon "text_size" :face font-lock-doc-face)
    (typeparameter :style "cod" :icon "list_unordered" :face font-lock-type-face)
    (type-parameter :style "cod" :icon "list_unordered" :face font-lock-type-face)
    (unit :style "cod" :icon "symbol_ruler" :face font-lock-constant-face)
    (value :style "cod" :icon "symbol_field" :face font-lock-builtin-face)
    (variable :style "cod" :icon "symbol_variable" :face font-lock-variable-name-face)
    (copilot :style "cod" :icon "copilot" :face (:foreground "#808080"))
    (t :style "cod" :icon "code" :face font-lock-warning-face))
  "Mapping of completion kinds to icons.

There are two possible types for the values of this alist, static icon
parameters or a custom function that should receive the completion candidate and
return the icon.

From here on, KIND is a symbol determining what the completion is, and comes
from calling the `:company-kind' property of the completion. The special t
symbol should be used for KIND to represent the default icon, and must be
present. This applies to both element variants.

In the first case, the elements should have the form (KIND :style ICON-STY :icon
ICON-NAME [:face FACE]). ICON-STY is a string with the icon style to use, from
those available in Nerd Fonts.  ICON-NAME is a string with the name of the icon.
FACE, if present, is applied to the icon, mainly for its color.

In case of more complex customizations that need to know the completion
candidate itself, one can use a mapping like (KIND ICON-FN), and ICON-FN will be
called with the candidate to return the icon."
  :type '(alist :key-type symbol :value-type (choice nerd-icons-corfu-icon-type nerd-icons-corfu-function-type))
  :group 'acm-icon)

(defun acm-nerd-icons--get-by-kind (kind)
  "Returns the icon glyph for kind KIND.

The mapping of kind -> icon is defined by the user in
`acm-nerd-icons-mapping'."
  (let* ((icon-entry (or (alist-get (or (intern kind) t) acm-nerd-icons-mapping)
                         (alist-get t acm-nerd-icons-mapping)))
         (style (plist-get icon-entry :style))
         (icon (plist-get icon-entry :icon))
         (icon-fun (intern (concat "nerd-icons-" style "icon")))
         (icon-name (concat "nf-" style "-" icon))
         (face (plist-get icon-entry :face)))
    (or (and (fboundp icon-fun) (funcall icon-fun icon-name :face face)) "?")))


(provide 'acm-icon)

;;; acm-icon.el ends here
