﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace WebformsTraining2020.modul15
{
    public class MyHub1 : Hub
    {
        public void Hello()
        {
            Clients.All.hello();
        }
        public void SendMsg(string msg)
        {
            Clients.All.UpdateListe(DateTime.Now.ToString() + ":" + msg);
        }
    }
}