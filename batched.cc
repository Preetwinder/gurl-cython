#include "url/gurl.h"
#include "batched.h"
#include "vector"


std::vector<GURL> BatchedParse(char **url, int len)
{
    std::vector<GURL> res;
    for (int i = 0; i < len; i++)  {
        GURL g(url[i]);
        res.push_back(g);
    }
    return res;
}
