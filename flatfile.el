;;; flatfile.el --- Deal with flat files         -*- lexical-binding: t; -*-

;; Copyright (C) 2014  Ian Eure

;; Author: Ian Eure <ian.eure@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'stripe-buffer)
(require 'hl-line)

(defface flatfile-hl-line-face
  '((t :foreground "blue1"))
  "Face for highlighting active lines in flatfile-mode.")

(define-derived-mode flatfile-mode fundamental-mode "Flat"
  "Major mode for editing fixed-width (\"flat\" files)"
  (set (make-variable-buffer-local 'hl-line-face) 'flatfile-hl-line-face)
  (stripe-buffer-mode 1)
  (hl-line-mode 1)
  (setq show-trailing-whitespace nil))

(defun flatfile-highlight-column (start end)
  "Highlight a column"
  (interactive))

(provide 'flatfile)
;;; flatfile.el ends here
