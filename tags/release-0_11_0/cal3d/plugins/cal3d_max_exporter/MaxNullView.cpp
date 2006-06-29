//----------------------------------------------------------------------------//
// MaxNullView.cpp                                                            //
// Copyright (C) 2001, 2002 Bruno 'Beosil' Heidelberger                       //
//----------------------------------------------------------------------------//
// This program is free software; you can redistribute it and/or modify it    //
// under the terms of the GNU General Public License as published by the Free //
// Software Foundation; either version 2 of the License, or (at your option)  //
// any later version.                                                         //
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
// Includes                                                                   //
//----------------------------------------------------------------------------//

#include "StdAfx.h"
#include "MaxNullView.h"

//----------------------------------------------------------------------------//
// Constructors                                                               //
//----------------------------------------------------------------------------//

CMaxNullView::CMaxNullView()
{
	worldToView.IdentityMatrix();
	screenW = 640.0f;
	screenH = 480.0f;
}

//----------------------------------------------------------------------------//
// Destructor                                                                 //
//----------------------------------------------------------------------------//

CMaxNullView::~CMaxNullView()
{
}

//----------------------------------------------------------------------------//
// Project a point in 3d to 2d                                                //
//----------------------------------------------------------------------------//

Point2 CMaxNullView::ViewToScreen(Point3 p)
{
	return Point2(p.x, p.y);
}

//----------------------------------------------------------------------------//