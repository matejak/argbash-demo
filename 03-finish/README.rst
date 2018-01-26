Wrapping interfaces
===================

Here, you see the Argbash templates of the ``underline`` and ``draw_line`` scripts.
Although the individual experience of using those scripts went up, calling ``draw_line`` from ``underline`` is still a bit clumsy.
Luckily, Argbash has the ``ARGBASH_WRAP`` functionality, that enables you to inherit a subset of a script's interface and pass those arguments on without rough edges.

Challenges
----------

#. Wrap the ``draw_line`` by the ``underline`` script, so you propagate the ``character`` and ``--interleaved`` arguments.
#. Trash the ``--interleaved`` argument of ``draw_line`` and replace it with ``--mode``, where accepted values will be ``continuous``, or ``interleaved``.
   Notice how this change will propagate to the ``underline`` interface (after you regenerate the script by ``argbash``).
#. Convert the ``underline`` script to the Argbash DIY MODE template.
