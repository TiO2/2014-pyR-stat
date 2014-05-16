Package Setup
-------------

.. code-block::

    pip install nose numpy ipython[all]
    pip install xlrd Bottleneck numexpr pandas scipy
    pip insatll requests pyquery


Matplotlib
----------

.. code-block::

    # source from
    # https://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.3.1/matplotlib-1.3.1.tar.gz

    wget https://github.com/matplotlib/matplotlib/pull/2623.diff
    patch -g 0 -f -d . -p1 -i 2623.diff
    python setup.py install


For cairo, one needs some hack. See <https://github.com/Homebrew/homebrew/blob/master/Library/Formula/py3cairo.rb>

RPy2 Installation
-----------------

For OSX, see issue <https://bitbucket.org/lgautier/rpy2/issue/194>.

.. code-block::

    brew install R --with-openblas
    brew install python3
    hg clone https://www.bitbucket.org/lgautier/rpy2
    cd rpy2
    hg update version_2.4.x

    env LDFLAGS="-L/usr/local/Cellar/r/3.1.0/R.framework/Versions/3.1/Resources/lib -L/usr/local/opt/openblas/lib" \
        python3 setup.py build
    python3 setup.py install
    python3 -m 'rpy2.tests'
    # Ran 374 tests in 4.141s
    # OK (skipped=2, expected failures=1)
