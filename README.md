## Python + iOS

Run Python in your Swift app!

### Install and Run

Clone the repo and run `./bootstrap`. You should be ready to build and run the
project in Xcode and see some results from Python in the console.

### But why?

Because you can!

It's fun to pick apart software and make two unexpected pieces work with each other.

Some serious reasons you might want to do this:

* A legacy Python codebase with your app's business logic
* A library that only exists in Python
* A Python developer new to iOS (see [PyObjC](https://pythonhosted.org/pyobjc/index.html))

### Okay, but how?

1. Patch Python for iOS
2. Compile for all your architectures and make Python.framework, OpenSSL.framework, etc.
3. Follow the Python/C API Reference Manual to put setup Python in your Swift app (mostly working in Obj-C/C)
4. Write Python!

### Helpful Scripts

**bootstrap**: Install Python.framework, its dependencies, and your Python packages.
Python.framework is too large to check into VCS.

**lock-packages**: Write out a requirements.txt with the exact package versions for your project's installed packages.

**Install a new Python dependency**: `pip install --target python/packages <package name>`
