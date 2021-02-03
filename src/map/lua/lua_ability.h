﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#ifndef _LUAABILITY_H
#define _LUAABILITY_H

#include "../../common/cbasetypes.h"
#include "luautils.h"

class CAbility;

class CLuaAbility
{
    CAbility* m_PLuaAbility;

public:
    CLuaAbility(CAbility*);

    CAbility* GetAbility() const
    {
        return m_PLuaAbility;
    }

    uint16 getID();
    int16  getMsg();
    uint16 getRecast();
    uint16 getRange();
    auto   getName() -> const char*;
    uint16 getAnimation();

    void setMsg(uint16 messageID);
    void setAnimation(uint16 animationID);
    void setRecast(uint16 recastTime);
    void setCE(uint16 ce);
    void setVE(uint16 ve);
    void setRange(float range);

    static void Register();
};

#endif
