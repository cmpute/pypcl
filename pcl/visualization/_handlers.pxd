from libcpp cimport bool
from pcl.common.PCLPointCloud2 cimport PCLPointCloud2Ptr, PCLPointCloud2ConstPtr
from pcl.visualization.point_cloud_color_handlers cimport PointCloudColorHandler_PCLPointCloud2

cdef extern from "python_handlers.hpp":
    cdef cppclass PointCloudColorHandlerPython(PointCloudColorHandler_PCLPointCloud2):
        PointCloudColorHandlerPython(const PCLPointCloud2ConstPtr &cloud, int (*func_handler)(object, PCLPointCloud2Ptr, unsigned char*), object func_object)
        void setCapable(bool capable)
