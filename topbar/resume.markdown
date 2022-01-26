---
layout: post
permalink: "/resume"
title: "My Résumé"
---

<style>
	#center { width: 70%; }
	.noBorder { border:none !important; }
	.container { display: flex; }
	.column { flex: 1; }

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
</style>

<div class="grid-container" style="padding-left: 1.5em; font-size: 14px; align-items: center;">
   <div class="item-1">
   		<a href="mailto:gus.lipkin@gmail.com">gus.lipkin@gmail.com</a>
   	</div>
   <div class="item-2" style="color:#e91d63; font-size: 32px;"><center><b>Gus Lipkin</b></center></div>
   <div class="item-3">
   		<a href="https://linkedin.com/in/guslipkin/">linkedin.com/in/guslipkin/</a>
   		<br>
   		<a href="https://guslipkin.github.io">guslipkin.github.io</a>
   </div>
</div>
<hr>
### Education
<div class="grid-job">
	<div class="job"><b>Florida Polytechnic University</b></div>
	<div class="time">Aug 2018 - May 2022</div>
</div>
<div style="text-indent: -1.5em; padding-left: 1.5em;">
	<span style="color:#2e4440; padding-left: 1.5em;"><em>– Bachelor of Science, Business Analytics with concentrations in Quantitative Economics & Econometrics and Intelligent Mobility</em></span>
	<br>
	<span style="color:#2e4440;"><em>– Associate of Arts</em></span>
</div>
<p style="text-indent: 1em; font-size: 14px;"><b>Selected Courses</b></p>

<div style="padding-left: 1.5em; font-size: 14px; color: #666666;">
	<div class="container">
   	<div class="column column-one"><ul><li>Database I & II</li></ul></div>
   	<div class="column column-two"><ul><li>Strategic Management</li></ul></div>
   	<div class="column column-three"><ul><li>Six Sigma</li></ul></div>
   	<div class="column column-four"><ul><li>Programming I</li></ul></div>
	</div>
	<div class="container">
   	<div class="column column-one"><ul><li>Operations and Supply Chain & Operations Research</li></ul></div>
   	<div class="column column-two"><ul><li>Time Series Modeling and Forecasting</li></ul></div>
   	<div class="column column-three"><ul><li>Statistics, Quantitative Methods, & Statistical Learning</li></ul></div>
   	<div class="column column-four"><ul><li>Benefit Cost Analysis & Economic Analysis</li></ul></div>
	</div>
</div>

<p style="text-indent: 1em; font-size: 14px;"><b>Software and Programming</b></p>
<div class="container" style="padding-left: 1.5em; font-size: 14px; color: #666666;">
   <div class="column column-one"><ul><li>R and RStudio</li></ul></div>
   <div class="column column-two"><ul><li>SQL, Redis, Neo4J</li></ul></div>
   <div class="column column-three"><ul><li>Stata</li></ul></div>
</div>

### Experience
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
	<li>Correlate Patient Feedback to Avoidable Readmissions and Patient Experience</li>
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
	<li>Investige the Spatio-Temporal Relationship of Different Climate Variables with the Spread of SARS-CoV-2 Using GIS and Multivariate Regressions</li>
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

### Professional Organizations
<div class="grid-job">
	<div class="job">
		<span><b>Student Body Vice-President</b></span>
	<span style="color:#2e4440"><em> – Florida Polytechnic University Student Government Association</em></span>
	</div>
	<div class="time">Jan 2022 - Present</div>
</div>
<ul style="font-size: 14px; color:#666666;">
	<!--<li></li>-->
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