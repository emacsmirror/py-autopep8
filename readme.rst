###########
py-autopep8
###########

Provides commands, which use the external ``autopep8`` tool to tidy up the current buffer according to Python's PEP8.


Usage
=====

Use the package (available in MELPA) and activate ``py-autopep8-mode`` in Python mode from your init file:

Manually Invoking
-----------------

To execute this manually on the buffer, run ``M-x py-autopep8-buffer``

Formatting on Save
------------------

You may wish to automatically format upon save.

This can be done using an ``py-autopep8-mode``, e.g.

.. code-block:: elisp

   (add-hook 'python-mode-hook 'py-autopep8-mode)

Now every time you save your Python file autopep8 will be executed on the current buffer.


Customization
-------------

To customize the behavior of ``autopep8`` you can set the command and options it's called with:

``py-autopep8-options``: (list of strings, defaults to ``()``)
   Use these options to set the default options.

   Note ``autopep8`` will use ``pyproject.toml`` when found, so project wide defaults can be configured here.

``py-autopep8-command`` (string defaults to ``"autopep8"``)
   Can be used to point to the location of the ``autopep8`` command
   (otherwise ``autopep8`` from the ``PATH`` will be used).


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
