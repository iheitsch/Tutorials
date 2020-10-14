<%-- 
    Document   : FindPrimes
    Created on : Nov 8, 2017, 10:29:09 AM
    Author     : frieda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Primes</title>
        <link rel="stylesheet" href="FindPrimes.css" type="text/css">
        <script src="FindPrimes.js"></script>
        <%@ page import="java.awt.image.BufferedImage,java.awt.Graphics2D" %>
    </head>
    <body onresize="resize()" id="body">
        
<% 
        final boolean debug = false;
        final int MAXINT = 101;
        final String[] colors = { 
            "#ffce1a", "#ef0010", "#0040e0", "#20c0e0", "#39f31d",
            "#a020e0", "#993300", "#60a010", "#e040e0", "#60209b",
            "#0000ff", "#ff00b8", "#ff9900", "#40a010", "#e06056",
            "#4040e0", "#eab400", "#c06010", "#eab2ff", "#39931d",
            "#ffce1a", "#39959e", "#ea2a30", "#e06056", "#e0a600"
        };
        final int[] angles = {
             96,  48,   0, 144,  24,
             72, 120,  36,  60,  84,
            108, 132, 156,  12, 168
        };
        int numPrimes = 0;
        int primesFound = 0;
        String whatColor;
        int whatAngle; %>

            <div class="msg">
            <label id="msg0"></label>
            </div>
            <div class="msg">
            <label id="msg1"></label>
            </div>
            <div class="msg">
            <label id="msg2"></label>
            </div>
            <div class="msg">
            <label id="msg3"></label>
            </div>
        <div class="primetable">
<%      for( int i = 1; i < MAXINT; ++i ) { 
            boolean isPrime = false;
            String cid = "c" + i;
            if( i != 1 ) {
            int nFactors = 1;
            int halfInt = 1 + i/2;
            
            for( int j = 2; j < halfInt; ++j ) {
                if( i%j == 0 ) {
                    nFactors += 1;
                }
            }            
            if( nFactors == 1 ) { 
                isPrime = true;
                numPrimes += 1;
            } 
        }
        if( isPrime ) { 
            whatColor = new String(colors[numPrimes-1]);
            int idx = (numPrimes - 1)%15;
            whatAngle = angles[idx]; %>
            <span>
            <canvas id="<%=cid%>" class="prime" data-circled="false" 
                    onclick="circle( <%=i%> )" 
                    data-angle="<%=whatAngle%>" data-color="<%=whatColor%>">
            </canvas>
            </span>
<%      } else { %>
            <span>
            <canvas id="<%=cid%>" class="mult" data-struck="false">
            </canvas>
            </span>
        <% } 
    } %>
        </div>
    <form>
<%  String type = debug? "text" : "hidden";
    if( debug ) { %> 
        <label>MAXINT</label>
<%  } %>
        <input type="<%=type%>" id="maxInt" value="<%=MAXINT%>"></input>
<%  if( debug ) { %> 
        <label>numPrimes</label>
<%  } %>
        <input type="<%=type%>" id="numPrimes" value="<%=numPrimes%>"></input>
    </form>
    </body>
</html>
