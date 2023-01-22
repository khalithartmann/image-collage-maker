from setuptools import setup, find_packages

setup(
    name="imagecollagemaker",
    version="0.2",
    packages=find_packages(),
    install_requires=[
        "opencv-contrib-python==4.5.5.62",
        "lapjv==1.3.1",
        "pyinstaller==4.8",
        "imagesize==1.3.0",
        "tqdm==4.48.0",
        "wheel",
    ],
)
