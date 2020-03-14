To connect to the spark cluster spark distribution used in the cluster base is used.
This simplifies the cluster connectivity. Spark requires JDK/JRE 8 installation.

Run these before starting the jupyter notebook/lab to access the values.

export SPARK_HOME='<instalation of spark-2.4.5-bin-hadoop2.7>'

export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export PATH=$SPARK_HOME:$PATH:~/.local/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin


---------------

for sparkmagic seup please refer 
https://github.com/jupyter-incubator/sparkmagic

## Installation

1. Install the library

        pip install sparkmagic

2. Make sure that ipywidgets is properly installed by running

        jupyter nbextension enable --py --sys-prefix widgetsnbextension 
 
3. If you're using JupyterLab, you'll need to run another command:

        jupyter labextension install @jupyter-widgets/jupyterlab-manager

4. (Optional) Install the wrapper kernels. Do `pip show sparkmagic` and it will show the path where `sparkmagic` is installed at. `cd` to that location and do:

        jupyter-kernelspec install sparkmagic/kernels/sparkkernel
        jupyter-kernelspec install sparkmagic/kernels/pysparkkernel
        jupyter-kernelspec install sparkmagic/kernels/sparkrkernel
        
5. (Optional) Modify the configuration file at ~/.sparkmagic/config.json. Look at the [sparkmagic_config.json.json](config/sparkmagic_config.json)

6. (Optional) Enable the server extension so that clusters can be programatically changed:

        jupyter serverextension enable --py sparkmagic

-------------------------


