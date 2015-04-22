;;; evil-textobj-entire.el --- text object for entire lines of buffer for evil  -*- lexical-binding: t; -*-

;; Copyright (C) 2015  supermomonga

;; Author: supermomonga
;; Keywords: convenience, emulations
;; Created: 2015-03-28
;; Version: 0.0.1
;; Package-Requires: ((emacs "24") (evil "1.0.0"))
;; URL: https://github.com/supermomonga/evil-textobj-entire

;; The MIT License (MIT)
;;
;; Copyright (c) <year> <copyright holders>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

;;; Commentary:

;; This is the textobj plugin for evil, to treat entire the buffer.
;; You can define keymaps like following:
;; (define-key evil-outer-text-objects-map evil-textobj-entire-key 'evil-entire-entire-buffer)
;; (define-key evil-inner-text-objects-map evil-textobj-entire-key 'evil-entire-entire-buffer)

;;; Code:

(require 'evil)

(defgroup evil-textobj-entire nil
  "Text object entire buffer for Evil"
  :prefix "evil-textobj-entire-"
  :group 'evil)

(defcustom evil-textobj-entire-key "e"
  "Key for evil-textobj-entire"
  :type 'string
  :group 'evil-textobj-entire)

(evil-define-text-object evil-entire-entire-buffer (count &optional beg end type)
  "Select entire buffer"
  (evil-range (point-min) (point-max)))

(provide 'evil-textobj-entire)
;;; evil-textobj-entire.el ends here
