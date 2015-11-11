from cppurl_parse cimport Component

cdef extern from "url/url_canon.h" namespace "url":
        cdef cppclass Replacements[T]:
                Replacements()
                void SetScheme(const T* s, const Component comp)
                void SetUsername(const T* s, const Component comp)
