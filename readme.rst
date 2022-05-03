###########
py-autopep8
###########

Provides commands, which use the external ``autopep8`` tool to tidy up the current buffer according to Python's PEP8.


Usage
=====

Use the package `(available in MELPA) <https://melpa.org/#/py-autopep8>`__
and activate ``py-autopep8-mode`` in Python mode from your init file, e.g.

.. code-block:: elisp

   (use-package py-autopep8
     :hook ((python-mode) . py-autopep8-mode))


Now every time you save your Python file autopep8 will be executed on the current buffer.


.. note::

   - If you don't want to enable this automatically on save, you can run ``M-x py-autopep8-buffer`` manually.
   - To *conditionally* format on save, see ``py-autopep8-on-save-p``.


Commands
--------

``py-autopep8-mode``
   Enable auto-formatting when saving.
``py-autopep8-buffer``
   Format the entire buffer.
``py-autopep8-region``
   Format the selected region (clamped to line bounds).


Customization
-------------

To customize the behavior of ``autopep8`` you can set the command and options it's called with:

``py-autopep8-options``: (list of strings, defaults to ``()``)
   Use these options to set the default options.

   Note ``autopep8`` will use ``pyproject.toml`` when found,
   so it's typically best to configure project wide options there.

``py-autopep8-command`` (string defaults to ``"autopep8"``)
   Can be used to point to the location of the ``autopep8`` command
   (otherwise ``autopep8`` from the ``PATH`` will be used).

``py-autopep8-on-save-p`` (defaults to ``'always``)
   This function is called before formatting on save, if it returns non-nil,
   auto-formatting will be performed.

   Since you may want to only reformat on saving for projects that use autopep8,
   preset functions have been included:

   - ``'always`` always reformat on save.

   - ``'py-autopep8-check-pyproject-exists``
     only reformat when ``pyproject.toml`` exists in the current directory or any of it's parents.

   - ``'py-autopep8-check-pyproject-exists-with-autopep8``
     only reformat when ``pyproject.toml`` exists in the current directory or any of it's parents and
     contains a ``[tool.autopep8]`` entry.

   Otherwise you can set this to a user defined function.


Installation
============

To install ``autopep8``:

.. code-block:: sh

   pip install autopep8

An example of this package being used with ``use-package``.

.. code-block:: elisp

   (use-package py-autopep8
     :config
     (setq py-autopep8-options '("--max-line-length=100" "--aggressive"))
     :hook ((python-mode) . py-autopep8-mode))


Bugs and Improvements
=====================

Feel free to open tickets or send pull requests with improvements.
