;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; Personal
     nero
     ;; Checkers
     spell-checking
     syntax-checking
     ;; Completion
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
     helm
     ;; Emacs
     better-defaults
     (org :variables
          org-enable-bootstrap-support t
          org-enable-github-support t
          org-enable-reveal-js-support t)
     typography
     ;; Frameworks
     react
     ;; International support
     chinese
     ;; Programming and markup languages
     bibtex
     emacs-lisp
     haskell
     html
     javascript
     latex
     markdown
     plantuml
     python
     ruby
     scheme
     sql
     typescript
     ;; Source control
     git
     version-control
     ;; Themes
     themes-megapack
     theming
     ;; Tools
     fasd
     pandoc
     pdf-tools
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     ;; Vim
     evil-snipe
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(vi-tilde-fringe)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-molokai
                         doom-one-light)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Knack Nerd Font"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.4)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands.
   dotspacemacs-auto-generate-layout-names nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil, the paste transient-state is enabled. And pressing `p' several
   ;; times, cycles through the elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative t
                               :disabled-for-modes dired-mode
                                                   doc-view-mode
                                                   markdown-mode
                                                   org-mode
                                                   pdf-view-mode
                                                   text-mode
                               :size-limit-kb 1000)
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   dotspacemacs-frame-title-format "%I@%S"
   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil
   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; Setting user details
  (setq user-full-name "Jing Yen Loh"
         user-mail-address "lohjingyen@gmail.com")

  ;; Trying to fix ANSI-term UTF-8
  (setq system-uses-terminfo nil)
  (defadvice ansi-term (after advise-ansi-term-coding-system)
    (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
  (ad-activate 'ansi-term)

  ;; JavaScript
  (setq-default js2-basic-offset 2
                js-indent-level 2)
  ;; Org
  (setq org-agenda-files (list "~/org/school.org"
                               "~/org/machine-learning.org"))
  (setq org-reveal-root "~/Documents/reveal.js")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (vue-mode ssass-mode vue-html-mode nord-theme ox-ioslide makey evil-quickscope all-the-icons memoize font-lock+ ox-twbs packed evil avy helm helm-core async org-plus-contrib hydra zonokai-theme zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme typescript-mode tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme plantuml-mode planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme pangu-spacing ht organic-green-theme pdf-tools key-chord ivy tablist org-category-capture alert log4e gntp omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme markdown-mode majapahit-theme madhat2r-theme lush-theme skewer-mode light-soap-theme json-snatcher json-reformat multiple-cursors js2-mode jbeans-theme jazz-theme ir-black-theme inkpot-theme simple-httpd htmlize heroku-theme hemisu-theme helm-bibtex parsebib hc-zenburn-theme haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gitignore-mode fringe-helper git-gutter+ git-gutter gandalf-theme flyspell-correct flatui-theme flatland-theme firebelly-theme find-by-pinyin-dired fasd farmhouse-theme evil-snipe magit magit-popup git-commit with-editor espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme flycheck dakrone-theme cyberpunk-theme web-completion-data dash-functional tern ghc haskell-mode company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme chinese-pyim pyim pyim-basedict pos-tip cherry-blossom-theme busybee-theme inf-ruby bubbleberry-theme birds-of-paradise-plus-theme biblio biblio-core badwolf-theme yasnippet auctex apropospriate-theme anti-zenburn-theme anaconda-mode pythonic ample-zen-theme ample-theme alect-themes afternoon-theme ace-pinyin pinyinlib auto-complete vi-tilde-fringe linum-relative yapfify yaml-mode xterm-color xkcd ws-butler winum which-key web-mode web-beautify volatile-highlights vmd-mode uuidgen use-package unfill typo toc-org tide tagedit symon string-inflection sql-indent spotify spaceline smeargle slime-company slim-mode slack shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor rubocop rspec-mode robe restclient-helm restart-emacs realgud rbenv ranger rake rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements persp-mode password-generator paradox pandoc-mode ox-reveal ox-pandoc ox-gfm orgit org-ref org-projectile org-present org-pomodoro org-download org-bullets org-brain open-junk-file ob-restclient ob-http nlinum-relative neotree mwim multi-term move-text mmm-mode minitest markdown-toc magithub magit-gitflow magit-gh-pulls lorem-ipsum livid-mode live-py-mode link-hint less-css-mode json-mode js2-refactor js-doc intero insert-shebang info+ indent-guide impatient-mode ibuffer-projectile hy-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-spotify helm-pydoc helm-purpose helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets graphviz-dot-mode google-translate golden-ratio gnuplot github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser fuzzy flyspell-correct-helm flycheck-pos-tip flycheck-haskell flycheck-bashate flx-ido fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu ess-R-object-popup ess-R-data-view eshell-z eshell-prompt-extras esh-help emoji-cheat-sheet-plus emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies editorconfig dumb-jump doom-themes disaster diff-hl define-word dante cython-mode csv-mode company-web company-tern company-statistics company-shell company-restclient company-quickhelp company-ghci company-ghc company-emoji company-cabal company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-identifiers-mode coffee-mode cmm-mode cmake-mode clean-aindent-mode clang-format chruby bundler browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-persistent-face ((t (:background "#008b8b" :foreground "#ffffff"))))
 '(cfw:face-annotation ((t (:foreground "#727280"))))
 '(cfw:face-day-title ((t (:foreground "#727280"))))
 '(cfw:face-default-content ((t (:foreground "#008b8b"))))
 '(cfw:face-default-day ((t (:foreground "#ffffff"))))
 '(cfw:face-disable ((t (:foreground "#727280"))))
 '(cfw:face-grid ((t (:foreground "#525254"))))
 '(cfw:face-header ((t (:foreground "#f92672" :weight bold))))
 '(cfw:face-holiday ((t (:foreground "#fd971f"))))
 '(cfw:face-periods ((t (:foreground "#008b8b"))))
 '(cfw:face-saturday ((t (:foreground "#727280" :weight bold))))
 '(cfw:face-select ((t (:background "#39393d"))))
 '(cfw:face-sunday ((t (:foreground "#727280"))))
 '(cfw:face-title ((t (:height 2.0 :inherit variable-pitch :weight bold :foreground "#727280"))))
 '(cfw:face-today ((t (:background "#39393d" :weight bold))))
 '(cfw:face-today-title ((t (:background "#f92672" :foreground "#ffffff"))))
 '(cfw:face-toolbar ((t (:inherit default))))
 '(cfw:face-toolbar-button-off ((t (:foreground "#727280"))))
 '(cfw:face-toolbar-button-on ((t (:foreground "#66d9ef" :weight bold))))
 '(company-scrollbar-bg ((t (:background "#1c1c1c"))))
 '(company-scrollbar-fg ((t (:background "#525254"))))
 '(company-tooltip ((t (:background "#1c1c1c"))))
 '(company-tooltip-common ((t (:foreground "#f92672"))))
 '(company-tooltip-selection ((t (:background "#39393d"))))
 '(company-tootip-annotation ((t (:foreground "#66d9ef"))))
 '(dired-subtree-depth-1-face ((t (:background nil))))
 '(dired-subtree-depth-2-face ((t (:background nil))))
 '(dired-subtree-depth-3-face ((t (:background nil))))
 '(dired-subtree-depth-4-face ((t (:background nil))))
 '(dired-subtree-depth-5-face ((t (:background nil))))
 '(dired-subtree-depth-6-face ((t (:background nil))))
 '(doom-neotree-data-file-face ((t (:height 1.0 :foreground "#727280"))))
 '(doom-neotree-dir-face ((t (:foreground "#f92672" :height 1.0))))
 '(doom-neotree-file-face ((t (:height 1.0))))
 '(doom-neotree-hidden-file-face ((t (:height 1.0 :foreground "#525254"))))
 '(doom-neotree-media-file-face ((t (:height 1.0 :foreground "#66d9ef"))))
 '(doom-neotree-text-file-face ((t (:height 1.0))))
 '(eval-sexp-fu-flash ((t (:background "#008b8b" :foreground "#ffffff"))))
 '(eval-sexp-fu-flash-error ((t (:background "#f92672" :foreground "#ffffff"))))
 '(flycheck-error ((t (:background nil))))
 '(flycheck-warning ((t (:background nil))))
 '(font-latex-sectioning-0-face ((t (:foreground "#66d9ef" :height 1.2))))
 '(font-latex-sectioning-1-face ((t (:foreground "#66d9ef" :height 1.1))))
 '(font-latex-sectioning-2-face ((t (:foreground "#66d9ef" :height 1.1))))
 '(font-latex-sectioning-3-face ((t (:foreground "#66d9ef" :height 1.0))))
 '(font-latex-sectioning-4-face ((t (:foreground "#66d9ef" :height 1.0))))
 '(font-latex-sectioning-5-face ((t (:foreground "#66d9ef" :height 1.0))))
 '(font-latex-verbatim-face ((t (:foreground "#fd971f"))))
 '(font-lock-comment-face ((t (:foreground "#727280" :slant italic))))
 '(font-lock-string-face ((t (:foreground "#b6e63e"))))
 '(git-gutter-fr:modified ((t (:foreground "#008b8b"))))
 '(header-line ((t (:background nil :inherit nil))))
 '(helm-ff-symlink ((t (:foreground "#8FA1B3"))))
 '(helm-match ((t (:foreground "#f92672"))))
 '(helm-selection ((t (:background "#39393d"))))
 '(highlight ((t (:background "#525254" :foreground "#ffffff"))))
 '(hl-line ((t (:background "#2d2e2e"))))
 '(magit-diff-hunk-heading ((t (:background "#525254" :foreground "#bbb"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "#525254" :foreground "#ffffff"))))
 '(magit-header-line ((t (:background nil :foreground "#1c1e1f" :box nil))))
 '(magit-section-heading ((t (:foreground "#f92672"))))
 '(mode-separator ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(neo-root-dir-face ((t (:foreground "#ffffff" :background "#2d2e2e" :box (:line-width 6 :color "#2d2e2e")))))
 '(nlinum-current-line ((t (:foreground "#fd971f"))))
 '(org-agenda-current-time ((t (:foreground "#8FA1B3"))))
 '(org-agenda-date ((t (:foreground "#727280" :inherit variable-pitch))))
 '(org-agenda-date-today ((t (:height 1.5 :foreground "#f92672" :inherit variable-pitch))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date))))
 '(org-agenda-done ((t (:inherit nil :strike-through t :foreground "#727280"))))
 '(org-agenda-structure ((t (:height 1.3 :foreground "#727280" :weight normal :inherit variable-pitch))))
 '(org-block ((t (:background "#1c1e1f"))))
 '(org-block-begin-line ((t (:background "#1c1e1f"))))
 '(org-block-end-line ((t (:background "#1c1e1f"))))
 '(org-document-info ((t (:foreground "#bbb" :slant italic))))
 '(org-document-info-keyword ((t (:foreground "#525254"))))
 '(org-document-title ((t (:inherit variable-pitch :height 1.3 :weight normal :foreground "#bbb"))))
 '(org-done ((t (:inherit variable-pitch :foreground "#008b8b" :background "#1c1e1f"))))
 '(org-ellipsis ((t (:underline nil :foreground "#525254"))))
 '(org-headline-done ((t (:strike-through t))))
 '(org-indent ((t (:inherit org-hide))))
 '(org-level-1 ((t (:inherit variable-pitch :height 1.3 :weight bold :foreground "#f92672" :background "#1c1e1f"))))
 '(org-level-2 ((t (:inherit variable-pitch :weight bold :height 1.2 :foreground "#bbb" :background "#1c1e1f"))))
 '(org-level-3 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-level-4 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-level-5 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-level-6 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-level-7 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-level-8 ((t (:inherit variable-pitch :weight bold :height 1.1 :foreground "#8FA1B3" :background "#1c1e1f"))))
 '(org-link ((t (:underline nil :weight normal :foreground "#8FA1B3"))))
 '(org-quote ((t (:background "#1c1e1f"))))
 '(org-scheduled ((t (:foreground "#bbb"))))
 '(org-scheduled-previously ((t (:foreground "#8FA1B3"))))
 '(org-scheduled-today ((t (:foreground "#ffffff"))))
 '(org-special-keyword ((t (:height 0.9 :foreground "#525254"))))
 '(org-tag ((t (:foreground "#727280"))))
 '(org-time-grid ((t (:foreground "#525254"))))
 '(org-todo ((t (:foreground "#fd971f" :background "#1c1e1f"))))
 '(org-upcoming-deadline ((t (:foreground "#f92672"))))
 '(org-warning ((t (:foreground "#fd971f"))))
 '(region ((t (:background "#39393d"))))
 '(show-paren-match ((t (:background "#f92672" :foreground "#1c1e1f"))))
 '(solaire-hl-line-face ((t (:background "#1c1e1f"))))
 '(spacemacs-emacs-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-evilified-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-hybrid-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-lisp-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-motion-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-normal-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(spacemacs-visual-face ((t (:background "#1c1e1f" :foreground "#ffffff"))))
 '(tooltip ((t (:foreground "#f92672" :background "#1c1c1c"))))
 '(variable-pitch ((t (:family "Source Sans Pro"))))
 '(vertical-border ((t (:background "#39393d" :foreground "#39393d"))))
 '(which-key-command-description-face ((t (:foreground "#66d9ef")))))
)
