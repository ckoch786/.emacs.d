Type RET on an entry to view its full documentation.Type RET on an entry to view its full documentation.Type RET on an entry to view its full documentation.

omnisharp--ac-expand	      M-x ... RET
   (not documented)
omnisharp--jump-to-enclosing-func M-x ... RET
   Jumps to the closing brace of the current function definition
omnisharp--popup-to-ido	      M-x ... RET
   When in a popup menu with autocomplete suggestions, calling this
omnisharp-add-dot-and-auto-complete <menu-bar> <omnisharp> <Auto-complete> <Add . and complete members>
   Adds a . character and calls omnisharp-auto-complete. Meant to be
omnisharp-auto-complete	      <menu-bar> <omnisharp> <Auto-complete> <at point>
   If called with a prefix argument, will complete types that are not
omnisharp-check-alive-status  <menu-bar> <omnisharp> <OmniSharp server> <Check alive status>
   Shows a message to the user describing whether the
omnisharp-check-ready-status  <menu-bar> <omnisharp> <OmniSharp server> <Check ready status>
   Shows a message to the user describing whether the
omnisharp-code-format-entire-file <menu-bar> <omnisharp> <Solution actions> <Run code format on current buffer>
   Format the code in the current file. Replaces the file contents
omnisharp-code-format-region  M-x ... RET
   Format the code in the current region.
omnisharp-current-type-documentation <menu-bar> <omnisharp> <Current symbol> <Show documentation>
   Display documentation of the current type under point. With prefix
omnisharp-current-type-information <menu-bar> <omnisharp> <Current symbol> <Show type>
   Display information of the current type under point. With prefix
omnisharp-current-type-information-to-kill-ring	<menu-bar> <omnisharp> <Current symbol> <Show type and add it to kill ring>
   Shows the information of the current type and adds it to the kill
omnisharp-find-implementations <menu-bar> <omnisharp> <Current symbol> <Find implementations>
   Show a buffer containing all implementations of the interface under
omnisharp-find-implementations-with-ido	<menu-bar> <omnisharp> <Current symbol> <Find implementations with ido>
   (not documented)
omnisharp-find-usages	      <menu-bar> <omnisharp> <Current symbol> <Find usages>
   Find usages for the symbol under point
omnisharp-find-usages-with-ido <menu-bar> <omnisharp> <Current symbol> <Find usages with ido>
   (not documented)
omnisharp-fix-usings	      M-x ... RET
   Find usages for the symbol under point.
omnisharp-format-on-keystroke M-x ... RET
   Formats the current block as you type `;` or `}`.
omnisharp-go-to-definition    <menu-bar> <omnisharp> <Navigate to..> <Definition at point>
   Jump to the definition of the symbol under point. With prefix
omnisharp-go-to-definition-other-window	M-x ... RET
   Do `omnisharp-go-to-definition' displaying the result in a
   different window.
omnisharp-imenu-create-index  M-x ... RET
   Imenu callback function - returns an alist of ((member-name
   . position))
omnisharp-install-server      M-x ... RET
   Installs OmniSharp server locally into
   ~/.emacs/cache/omnisharp/server/$(version)
omnisharp-mode		      M-x ... RET
   Omnicompletion (intellisense) and more for C# using an OmniSharp
omnisharp-mode-menu	      M-x ... RET
   Menu for omnisharp-mode
omnisharp-navigate-to-current-file-member <menu-bar> <omnisharp> <Navigate to..> <Current file member>
   Show a list of all members in the current file, and jump to the
omnisharp-navigate-to-current-file-member-other-window M-x ... RET
   (not documented)
omnisharp-navigate-to-region  <menu-bar> <omnisharp> <Navigate to..> <Region in current file>
   Navigate to region in current file. If OTHER-WINDOW is given and t,
omnisharp-navigate-to-solution-file <menu-bar> <omnisharp> <Navigate to..> <File in solution>
   (not documented)
omnisharp-navigate-to-solution-file-then-file-member M-x ... RET
   Navigates to a file in the solution first, then to a member in that
omnisharp-navigate-to-solution-member <menu-bar> <omnisharp> <Navigate to..> <Solution member>
   (not documented)
omnisharp-reload-solution     M-x ... RET
   Restarts omnisharp server on solution last loaded
omnisharp-rename	      <menu-bar> <omnisharp> <Current symbol> <Rename>
   Rename the current symbol to a new name. Lets the user choose what
omnisharp-run-code-action-refactoring <menu-bar> <omnisharp> <Run contextual code action / refactoring at point>
   Gets a list of refactoring code actions for the current editor
omnisharp-show-last-auto-complete-result <menu-bar> <omnisharp> <Auto-complete> <Show last result>
   (not documented)
omnisharp-show-overloads-at-point <menu-bar> <omnisharp> <Auto-complete> <Show overloads at point>
   (not documented)
omnisharp-solution-errors     M-x ... RET
   Opens a new buffer *omnisharp-solution-errors* (or updates existing
   one)
omnisharp-start-omnisharp-server <menu-bar> <omnisharp> <OmniSharp server> <Start OmniSharp server>
   Starts an OmniSharp server for a given path to a project or
   solution file
omnisharp-stop-server	      <menu-bar> <omnisharp> <OmniSharp server> <Stop OmniSharp server>
   Stops Omnisharp server if running.
omnisharp-unit-test-at-point  M-x ... RET
   Runs test case under point, if any.
omnisharp-unit-test-buffer    M-x ... RET
   Runs all test cases defined in the current buffer.
omnisharp-unit-test-last      M-x ... RET
   Re-runs the last unit test run (if any).
