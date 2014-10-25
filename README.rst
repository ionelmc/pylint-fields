===============================
pylint-fields
===============================

.. image:: http://img.shields.io/travis/ionelmc/pylint-fields/master.png?style=flat
    :alt: Travis-CI Build Status
    :target: https://travis-ci.org/ionelmc/pylint-fields

.. image:: https://ci.appveyor.com/api/projects/status/github/ionelmc/pylint-fields?branch=master
    :alt: AppVeyor Build Status
    :target: https://ci.appveyor.com/project/ionelmc/pylint-fields

.. image:: http://img.shields.io/coveralls/ionelmc/pylint-fields/master.png?style=flat
    :alt: Coverage Status
    :target: https://coveralls.io/r/ionelmc/pylint-fields

.. image:: http://img.shields.io/pypi/v/pylint-fields.png?style=flat
    :alt: PYPI Package
    :target: https://pypi.python.org/pypi/pylint-fields

.. image:: http://img.shields.io/pypi/dm/pylint-fields.png?style=flat
    :alt: PYPI Package
    :target: https://pypi.python.org/pypi/pylint-fields

.. image:: https://landscape.io/github/ionelmc/pylint-fields/master/landscape.png?style=flat
    :target: https://landscape.io/github/ionelmc/pylint-fields/master
    :alt: Code Quality Status

.. image:: https://readthedocs.org/projects/pylint-fields/badge/?style=flat
    :target: https://readthedocs.org/projects/pylint-fields
    :alt: Documentation Status

A pylint plugin for `python-fields <https://github.com/ionelmc/python-fields>`_. It makes pylint
understand what fields are going to be present in the resulting class and what fields are required
by the default __init__ method.

* Free software: BSD license

Installation
============

::

    pip install pylint-fields

Usage
=====

Add this to your pylint conf::

    [MASTER]
    load-plugins=pylint_fields


Documentation
=============

https://pylint-fields.readthedocs.org/

Development
===========

To run the all tests run::

    tox
