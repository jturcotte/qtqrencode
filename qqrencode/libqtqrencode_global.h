#ifndef LIBQTQRENCODE_GLOBAL_H
#define LIBQTQRENCODE_GLOBAL_H

#include <QtCore/qglobal.h>

#ifndef LIBQTQRENCODE_STATIC
#  if defined(LIBQTQRENCODE_LIBRARY)
#    define LIBQTQRENCODESHARED_EXPORT Q_DECL_EXPORT
#  else
#    define LIBQTQRENCODESHARED_EXPORT Q_DECL_IMPORT
#  endif
#else
#  define LIBQTQRENCODESHARED_EXPORT
#endif



#endif // LIBQTQRENCODE_GLOBAL_H
