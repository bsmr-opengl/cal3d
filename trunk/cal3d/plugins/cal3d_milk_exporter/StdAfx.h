//----------------------------------------------------------------------------//
// StdAfx.h                                                                   //
// Copyright (C) 2002 Bruno 'Beosil' Heidelberger                             //
//----------------------------------------------------------------------------//
// This program is free software; you can redistribute it and/or modify it    //
// under the terms of the GNU General Public License as published by the Free //
// Software Foundation; either version 2 of the License, or (at your option)  //
// any later version.                                                         //
//----------------------------------------------------------------------------//

#ifndef STDAFX_H
#define STDAFX_H

//----------------------------------------------------------------------------//
// Defines                                                                    //
//----------------------------------------------------------------------------//

#ifdef _WIN32
#define VC_EXTRALEAN
#pragma warning(disable : 4786)
#endif

//----------------------------------------------------------------------------//
// Includes                                                                   //
//----------------------------------------------------------------------------//

#include <fstream>
#include <string>
#include <vector>
#include <list>
#include <stack>
#include <map>
#include <set>
#include <sstream>
#include <algorithm>

#include <float.h>

#include <afxwin.h>
#include <afxext.h>
#include <afxcmn.h>

#include "msPlugIn.h"
#include "msLib.h"

#include "cal3d/cal3d.h"

#include "resource.h"

//----------------------------------------------------------------------------//
// MSVC++ stuff                                                               //
//----------------------------------------------------------------------------//

//{{AFX_INSERT_LOCATION}}

#endif

//----------------------------------------------------------------------------//
