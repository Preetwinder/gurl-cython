from cppurl_parse cimport Component
from libcpp.string cimport string

cdef extern from "ComponentStringA.h":
    cdef string ComponentStringA(const Component comp, const char* spec)
