from libcpp.string cimport string
from cppgurl cimport GURL
from cppurl_parse cimport Component, Parsed
from cppurl_canon cimport Replacements


cdef class URL:
    cdef GURL * _thisptr

    def __cinit__(self, url):
        self._thisptr = new GURL(url)

    def __dealloc__(self):
        if self._thisptr != NULL:
            del self._thisptr

    cpdef bint is_valid(self):
        return self._thisptr.is_valid()

    cpdef bint is_empty(self):
        return self._thisptr.is_empty()

    cpdef bint IsStandard(self):
        return self._thisptr.IsStandard()

    cpdef string Resolve(self, url):
        return (self._thisptr.Resolve(url)).spec()

    cpdef string spec(self):
        return self._thisptr.spec()

    cpdef string possibly_invalid_spec(self):
        return self._thisptr.possibly_invalid_spec()

    cpdef bint has_scheme(self):
        return self._thisptr.has_scheme()

    cpdef string scheme(self):
        return self._thisptr.scheme()

    cpdef bint has_username(self):
        return self._thisptr.has_username()

    cpdef string username(self):
        return self._thisptr.username()

    cpdef bint has_password(self):
        return self._thisptr.has_password()

    cpdef string password(self):
        return self._thisptr.password()

    cpdef bint has_host(self):
        return self._thisptr.has_host()

    cpdef string host(self):
        return self._thisptr_host()

    cpdef bint has_port(self):
        return self._thisptr.has_port()

    cpdef string port(self):
        return self._thisptr.port()

    cpdef bint has_path(self):
        return self._thisptr.has_path()

    cpdef string path(self):
        return self._thisptr.path()

    cpdef bint has_query(self):
        return self._thisptr.has_query()

    cpdef string query(self):
        return self._thisptr.query()

    cpdef bint has_ref(self):
        return self._thisptr.has_ref()

    cpdef string ref(self):
        return self._thisptr.ref()

    cdef Parsed getParsed(self):
        return self._thisptr.parsed_for_possibly_invalid_spec()

    '''
        cpdef ReplaceComponents(self, scheme = None, username = None):
                cdef Replacements[char] replacement
                cdef Parsed p = self.getParsed()
                cdef Component schemeComp
                cdef Component usernameComp
                if scheme:
                        schemeComp.len = len(scheme)
                        schemeComp.begin = 0
                        replacement.SetScheme(scheme, schemeComp)
                if username:
                        usernameComp.len = len(username)
                        usernameComp.begin =  
                        replacement.SetUsername(username, usernameComp)

                return URL((self._thisptr.ReplaceComponents(replacement)).spec())
        '''
