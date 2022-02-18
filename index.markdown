---
layout: post
title: "Hi there 👋"
---

<link rel="stylesheet" href="../assets/wide.css">

<style>
.grid-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    column-gap: 20px;
    align-content: start;
  }
  .title-1 {
    grid-column:  1; 
    grid-row:  1;
  }
  .title-2 {
    grid-column: 2;
    grid-row: 1;
  }
  .content-1 {
    grid-column:  1; 
    grid-row:  2;
  }
  .content-2 {
    grid-column:  2; 
    grid-row:  2;
  }

  @media (max-width: 700px) {
    .flex-item {
      flex: 100%;
    }

    .grid-container {
      display: grid;
      grid-template-columns: 1fr;
    }
    .content-1, .content-2, .title-1, .title-2 {
      grid-column: unset;
      grid-row: unset;
    }
  }
</style>

<center>
  <img src="/assets/gus_headshot_landscape.jpg"
  style="max-height: 315px;"/>
</center>
<br>
I'm Gus, a Business Analyst with a few years' experience. I'd like to show you what I do.

You can also find me on Twitter <a href="https://twitter.com/GusLipkin">@guslipkin</a> or on Medium also <a href="https://guslipkin.medium.com">@guslipkin</a>.

<hr>
<h2>Data Focused Projects</h2>

<div class="grid-container">
  <div class="title-1 title"><h4><a href="/presentations/disney_world_ride_wait_times/">Disney World ride wait times</a></h4></div>
  <div class="content-1 content"><ul>
    <li><b>What:</b> Can I find the best time to visit Disney World 🏰 based on ride wait times?</li>
    <li><b>Why:</b> Going to Disney can be lots of fun, but waiting in lines is not.</li>
    <li><a href="https://github.com/guslipkin/disney_ds"><b>How:</b> </a><code>R: {forcats, lubridate, reshape2, tidyverse}</code></li>
    <li><b>Conclusion:</b> Try going to Epcot on a Wednesday in September.</li>
  </ul></div>
  <div class="title-2 title"><h4><a href="/presentations/covid_time_series_gis/">Investigating a relationship between climate variables and the spread of COVID-19</a></h4></div>
  <div class="content-2 content"><ul>
    <li><b>What:</b> Since COVID-19 🦠 is spread through close contact, do any climate variables influence spread?</li>
    <li><b>Why:</b> Human behavior is affected by the weather. If there is adverse weather, is there an increase in spread?</li>
    <li><a href="https://github.com/guslipkin/COVID-TimeSeries-GIS"><b>How:</b> </a><code>ArcGIS</code>, <code>Excel</code>, <code>R: {data.table, tidyverse}</code></li>
    <li><b>Conclusion:</b> Some counties can be modelled very well such as Cook County, Illinois while others, such as Tift County, Georgia, not so much.</li>
  </ul></div>
</div>

<hr>
<h2>Economic Analysis Focused Projects</h2>

<div class="grid-container">
  <div class="title-1 title"><h4><a href="/presentations/tutoring_at_poly/">Improving Tutoring at Florida Poly</a></h4></div>
  <div class="content-1 content"><ul>
    <li><b>What:</b> How can we make tutoring more available to students?</li>
    <li><b>Why:</b> Getting tutoring for the classes you need can be difficult, especially when trying to fit it into your schedule.</li>
    <li><a href="https://github.com/guslipkin/Fall2021/tree/main/ECO%203930%20%7E%20Contemporary%20Economics/Final%20Paper"><b>How:</b></a> <code>✨Math✨</code></li>
    <li><b>Conclusion:</b> A hybrid model where high demand classes offer group tutoring and all classes have one-on-one tutoring would be most efficient.</li>
  </ul></div>
    <div class="title-2 title"><h4><a href="/presentations/trader_joes_cultural_marketing_plan/">Trader Joe's Cultural and Marketing Plan</a></h4></div>
    <div class="content-2 content"><ul>
      <li><b>What:</b> Let's help Trader Joe's enter the Canadian supermarket industry.</li>
      <li><b>Why:</b> It's a final project for GEB 3373 – International and Comparative Dimensions of Business.</li>
      <li><a href="https://github.com/guslipkin/Spring2021/blob/main/GEB%203373%20%7E%20International%20Comparative%20Dimensions/GEB%203373%20Final%20Project"><b>How:</b> </a><code>Economic Analysis</code>, and <code>Game Theory</code></li>
      <li><b>Conclusion:</b> Trader Joe's has the potential to be a smash hit in the Canadian Supermarket industry.</li>
    </ul></div>
</div>

<hr>
<h2>Other Projects</h2>

<div class="grid-container">
    <div class="title-1 title"><h4><a href="/presentations/cat_simulator_2019/">Cat Simulator 2019</a></h4></div>
    <div class="content-1 content"><ul>
      <li><b>What:</b> Can we make a game that teaches basic Bash commands?</li>
      <li><b>Why:</b> It's a final project for COP 3353C – Introduction to Unix.</li>
      <li><a href="https://github.com/guslipkin/Lark"><b>How:</b> </a><code>Bash</code></li>
      <li><b>Conclusion:</b> It's lots of fun. I highly recommend it!</li>
    </ul></div>
    <div class="title-2 title"><h4><a href="https://flpolysga.github.io/">FLPolySGA.github.io</a></h4></div>
    <div class="content-2 content"><ul>
      <li><b>What:</b> Let's make a website with all the Student Government documents.</li>
      <li><b>Why:</b> It's important that Student Government stay in compliance with Florida Sunshine Laws.</li>
      <li><a href="https://github.com/FLPolySGA/FLPolySGA.github.io"><b>How:</b> </a><code>GitHub Pages</code>, <code>Jekyll</code>, <code>Markdown</code>, <code>HTML</code>, and <code>CSS</code></li>
      <li><b>Conclusion:</b> It ain't much, but it's honest work.</li>
    </ul></div>
</div>
