from distutils.core import setup, Extension
from Cython.Build import cythonize 

setup(ext_modules = cythonize(Extension(
        "pygurl",
        sources=["pygurl.pyx", "base/third_party/icu/icu_utf.cc", 
                 "base/strings/string16.cc", 
                 "base/strings/string_piece.cc", "base/strings/string_util.cc",
                 "base/strings/utf_string_conversions.cc", 
                 "base/strings/utf_string_conversion_utils.cc", "url/gurl.cc",
                 "url/url_canon_etc.cc", "url/url_canon_filesystemurl.cc",
                 "url/url_canon_fileurl.cc", "url/url_canon_host.cc",
                 "url/url_canon_internal.cc", "url/url_canon_ip.cc", 
                 "url/url_canon_mailtourl.cc", "url/url_canon_path.cc",
                 "url/url_canon_pathurl.cc", "url/url_canon_query.cc",
                 "url/url_canon_relative.cc", "url/url_canon_stdstring.cc",
                 "url/url_canon_stdurl.cc", "url/url_constants.cc",
                 "url/url_parse_file.cc", "url/url_util.cc", 
                 "url/third_party/mozilla/url_parse.cc"],
        language="c++",
        extra_compile_args = ["-std=gnu++0x", "-I./", "-fPIC", "-O3", "-pthread"],
        extra_link_args = ["-std=gnu++0x"],
)))
