;;; evil-textobj-entire.el --- text object for entire lines of buffer for evil  -*- lexical-binding: t; -*-

;; Copyright (C) 2015  supermomonga

;; Author: supermomonga
;; Keywords: convenience, emulations

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

;; It's a benri plugin.

;;; Code:

(require 'evil)

(defgroup evil-textobj-entire nil
  "Text object entire for Evil"
  :prefix "evil-textobj-entire-"
  :group 'evil)

(defcustom evil-textobj-entire-i-key "e"
  "Keys for evil-inner-entire"
  :type 'string
  :group 'evil-textobj-entire)
(defcustom evil-textobj-entire-a-key "e"
  "Keys for evil-a-entire"
  :type 'string
  :group 'evil-textobj-entire)

(defun evil-entire-range (count beg end type &optional inclusive)
  (evil-range (point-min) (point-max)))

(evil-define-text-object evil-a-entire (count &optional beg end type)
  "Select range entire a character by which the command is followed."
  (evil-entire-range count beg end type t))
(evil-define-text-object evil-inner-entire (count &optional beg end type)
  "Select inner range entire a character by which the command is followed."
  (evil-entire-range count beg end type))

(define-key evil-outer-text-objects-map evil-textobj-entire-a-key
  'evil-an-entire)
(define-key evil-inner-text-objects-map evil-textobj-entire-i-key
  'evil-inner-entire)

(print evil-outer-text-objects-map)


(provide 'evil-textobj-entire)
;;; evil-textobj-entire.el ends here
