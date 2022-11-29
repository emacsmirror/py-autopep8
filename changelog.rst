
##########
Change Log
##########


- 2022-11-29

  Remove deprecated ``py-autopep8-enable-on-save``.

- 2022-07-18

  Fix the exception being hidden in the event of an internal error running autopep8.

- 2022-05-01

   - Support formatting a limited range with ``py-autopep8-region``.

   - Add a predicate function with presets only to reformat when the function returns non-nil.

   - Rewrote based on `paetzke/py-autopep8 <https://github.com/paetzke/py-autopep8.el>`__,
     the main difference being that ``replace-buffer-contents`` is used instead of creating a diff an applying it.
