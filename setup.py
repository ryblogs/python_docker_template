# setup.py

from setuptools import setup, find_packages

setup(
    name="myproj",
    version="0.1",
    package_dir={"": "src"},
    packages=find_packages(where="src"),
    install_requires=[
        "numpy",
	    "matplotlib",
        "ipython",
    ],
    entry_points={
        'console_scripts': [
            'myproj=myproj.main:main',
        ],
    },
    description="A simple Dockerized editable pip installable python project template",
    author="ryblogs",
    author_email="",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)
