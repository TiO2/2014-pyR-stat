Package Setup
-------------

.. code-block::

    pip install nose numpy ipython[all]
    pip install xlrd Bottleneck numexpr pandas scipy
    pip insatll requests pyquery

RPy2 Installation
-----------------

For OSX, see issue <https://bitbucket.org/lgautier/rpy2/issue/194>.

.. code-block::

    brew install R --with-openblas
    brew install python3
    hg clone https://www.bitbucket.org/lgautier/rpy2
    cd rpy2
    hg update version_2.4.x

    env LDFLAGS="-L/usr/local/Cellar/r/3.0.3/R.framework/Versions/3.0/Resources/lib -L/usr/local/opt/openblas/lib" \
        python3 setup.py build
    python3 setup.py install
    python3 -m 'rpy2.tests'
    # Ran 374 tests in 4.141s
    # OK (skipped=2, expected failures=1)
