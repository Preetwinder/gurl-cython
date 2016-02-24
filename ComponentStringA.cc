#include <string>                                                               
#include "url/third_party/mozilla/url_parse.h"
 
std::string ComponentStringA(const url::Component& comp, const char* spec) {
    if (comp.len <= 0)
        return std::string();
    return std::string(spec, comp.begin, comp.len);
}

