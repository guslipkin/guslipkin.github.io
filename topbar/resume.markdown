---
layout: post
permalink: "/resume"
title: "My Résumé"
---

<link rel="stylesheet" href="../assets/resume.css">

<style>
	#center { width: 70%; }
	.noBorder { border:none !important; }
	.container { display: flex; }
	.column { flex: 1; }

	.flex-container {
    display: flex;
    flex-wrap: wrap;
  }

  .flex-item {
    flex: 25%;
  }

	.grid-container {
		display: grid;
		grid-template-columns: 1fr 2fr 1fr;
	}
	.item-1 {
		grid-column:  1; 
		grid-row:  1;
		}
	.item-2 {
		grid-column: 2;
		grid-row: 1;
	}
	.item-3 {
		grid-column: 3;
		grid-row: 1;
		text-align: right;
	}

	.grid-job {
		display: grid;
		grid-template-columns: 3fr 1fr;
	}
	.job {
		grid-column: 1;
		grid-row:  1;
		color: #e91d63;
		text-indent: -1.5em; 
		padding-left: 1.5em;
	}
	.time {
		grid-column: 2;
		grid-row: 1;
		text-align: right;
		color:  #666666;
		font-size: 12px;
	}

	@media (max-width: 700px) {
		.flex-item {
    		flex: 33.33%;
  		}

		.grid-container {
			display: grid;
			justify-items: center;
		}
		.item-1 {
			grid-column:  2; 
			grid-row:  2;
		}
		.item-2 {
			grid-column: 2;
			grid-row: 1;
		}
		.item-3 {
			grid-column: 2;
			grid-row: 3;
			text-align: center;
		}

		.grid-job {
			display: grid;
			grid-template-columns: 1fr;
		}
		.job {
			grid-column: 1;
			grid-row:  1;
			color: #e91d63;
			text-indent: -1.5em; 
			padding-left: 1.5em;
		}
		.time {
			grid-column: 1;
			grid-row: 2;
			text-align: left;
			color:  #666666;
			font-size: 12px;
		}
	}

	/* style from: https://codepen.io/mlms13/pen/LKFoy */
	.letter {
  	background: #fff;
  	box-shadow: 0 0 10px rgba(0,0,0,0.3);
  	margin: 26px auto 0;
  	max-width: auto;
  	min-height: 300px;
  	padding: 24px;
  	padding-left: 4.5%;
  	padding-right: 4.5%;
  	position: relative;
	}
	.letter:before, .letter:after {
  	content: "";
  	height: 98%;
  	position: absolute;
  	width: 100%;
  	z-index: -1;
	}
	.letter:before {
  	background: #fafafa;
  	box-shadow: 0 0 8px rgba(0,0,0,0.2);
  	left: -5px;
  	top: 4px;
  	--width:  10vw;
  	transform: rotate(-2.5deg);
	}
	.letter:after {
  	background: #f6f6f6;
  	box-shadow: 0 0 3px rgba(0,0,0,0.2);
  	right: -3px;
  	top: 1px;
  	transform: rotate(1.4deg);
	}
	/* end attribution */
</style>

<h3><a href="/assets/Gus_Lipkin_Resume_for_GitHub.pdf">🖨 Print a copy</a></h3>

<div class="letter resumeClass" id="resume">

<div style="color:#e91d63; font-size: 42px; text-align: center;">
	<b>Gus Lipkin</b>
</div>
<hr>
<br>
<h3 style="margin-bottom: 0px;">Education</h3>
<div class="grid-job">
	<div class="job"><b>Florida Polytechnic University</b></div>
	<div class="time">Aug 2018 - May 2022</div>
</div>
<div style="text-indent: -1.5em; padding-left: 1.5em;">
	<span style="color:#2e4440; padding-left: 1.5em;"><em>– Bachelor of Science, Business Analytics with concentrations in Quantitative Economics & Econometrics and Intelligent Mobility</em></span>
	<br>
	<span style="color:#2e4440;"><em>– Associate of Arts</em></span>
</div>
<p style="text-indent: 1em; font-size: 14px; margin-bottom: 0px;"><b>Selected Courses</b></p>

<div style="padding-left: 1.5em; font-size: 14px; color: #666666;">
	<div class="flex-container">
   	<div class="flex-item"><ul><li>Database I & II</li></ul></div>
   	<div class="flex-item"><ul><li>Strategic Management</li></ul></div>
   	<div class="flex-item"><ul><li>Six Sigma</li></ul></div>
   	<div class="flex-item"><ul><li>Programming I</li></ul></div>
   	<div class="flex-item"><ul><li>Operations and Supply Chain & Operations Research</li></ul></div>
   	<div class="flex-item"><ul><li>Time Series Modeling and Forecasting</li></ul></div>
   	<div class="flex-item"><ul><li>Statistics, Quantitative Methods, & Statistical Learning</li></ul></div>
   	<div class="flex-item"><ul><li>Benefit Cost Analysis & Economic Analysis</li></ul></div>
	</div>
</div>

<p style="text-indent: 1em; font-size: 14px; margin-bottom: 0px;"><b>Software and Programming</b></p>
<div class="flex-container" style="padding-left: 1.5em; font-size: 14px; color: #666666;">
   <div class="flex-item"><ul><li>R and RStudio</li></ul></div>
   <div class="flex-item"><ul><li>SQL, Redis, Neo4J</li></ul></div>
   <div class="flex-item"><ul><li>Stata</li></ul></div>
   <div class="flex-item"></div>
</div>

<h3 style="margin-bottom: 0px;">Experience</h3>
<div class="grid-job">
	<div class="job">
		<span><b>Software Quality Assurance Analyst</b></span>
		<span style="color:#2e4440"><em> – AssistRx</em></span>
	</div>
	<div class="time">Jan 2022 - Present</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Create and execute test plans to discover software problems and their causes</li>
	<li>Document and demonstrate software features to internal and external users</li>
</ul>

<div class="grid-job">
	<div class="job">
		<span><b>Data Science Project Team Lead</b></span>
	<span style="color:#2e4440"><em> – Tallahassee Memorial Healthcare</em></span>
	</div>
	<div class="time">Aug 2021 - Present</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Correlate patient feedback to avoidable readmissions and patient experience</li>
	<li>Work with capstone sponsor to define project timeline and goals</li>
	<li>Analyze discharge survey data to find correlations between responses and readmission rates using R and RStudio</li>
</ul>

<div class="grid-job">
	<div class="job">
		<span><b>Research Intern</b></span>
	<span style="color:#2e4440"><em> – iCompBio</em></span>
	</div>
	<div class="time">May 2021 - Aug 2021</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Investigate the spatio-temporal relationship of different climate variables with the spread of SARS-CoV-2 using GIS and multivariate regressions</li>
	<li>Gather and process time series data of geospatial climate variables and SARS-CoV-2 data</li>
	<li>Analyze data in ArcGIS to investigate variable relationships</li>
</ul>

<div class="grid-job">
	<div class="job">
		<span><b>Data Analyst and Assistant Project Manager</b></span>
		<span style="color:#2e4440"><em> – Draken International</em></span>
	</div>
	<div class="time">Dec 2020 - Sep 2021</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Oversee a team of interns and supervise data transition efforts</li>
	<li>Coordinate with project managers to ensure a successful data migration</li>
	<li>Create and run weekly parts availability analysis and reports using R and RStudio</li>
</ul>

<div class="grid-job">
	<div class="job">
		<span ><b>Research Assistant</b></span>
		<span style="color:#2e4440"><em> – Florida Polytechnic University</em></span>
	</div>
	<div class="time">May 2020 - Aug 2020</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Assist in all facets of research, including but not limited to, data transcription, analysis in R and RStudio, and writing reports</li>
	<li>Attend daily meetings to give updates on project progress and discuss data discoveries</li>
</ul>
<h3 style="margin-bottom: 0px;">Professional Organizations</h3>
<div class="grid-job">
	<div class="job">
		<span><b>Student Body Vice-President</b></span>
	<span style="color:#2e4440"><em> – Florida Polytechnic University Student Government Association</em></span>
	</div>
	<div class="time">Jan 2022 - Present</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Act as the Chief Services Officer of the Student Body</li>
	<li>Assist the Student Body President in the conduct of government</li>
	<li>Stay in communication with all SGA departments and organizations</li>
</ul>
<div class="grid-job">
	<div class="job">
		<span><b>Director of Standards and Enforcement</b></span>
	<span style="color:#2e4440"><em> – Florida Polytechnic University Student Government Association</em></span>
	</div>
	<div class="time">May 2020 - Jan 2022</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<li>Manage the SGA SharePoint and CampusLabs</li>
	<li>Track SGA and Registered Student Organization assets</li>
	<li>Maintain <a href="https://flpolysga.github.io">FLPolySGA.github.io</a></li>
</ul>

</div>
