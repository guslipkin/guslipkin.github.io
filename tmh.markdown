---
layout: post
permalink: "/tmh"
title: "Patient Readmission Rates"
---

<!--
<table>
	<tr>
		<th>Gender</th>
		<th>Race</th>
		<th>Ethnicity</th>
		<th>Age</th>
	</tr>
</table>
-->

<style>
@media screen and (max-width: 600px) {
  table {
    width: 100%;
  }

  table thead {
    display: none;
  }

  table tr, table td {
    border-bottom: 1px solid #ddd;
  }

  table tr {
    margin-bottom: 8px;
  }

  table td {
    display: flex;
  }
  
  table td::before {
    content: attr(label);
    font-weight: bold;
    width: 120px;
    min-width: 120px;
  }
}
</style>

<table>
	<thead>
		<tr>
			<th>Age</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><b id="gender"></b></td>
		</tr>
	</tbody>
</table>
<script>setMobileTable('table')</script>
 
<script>
	const genderArray = [
		"Male", 
		"Female"
	]
	var gender = genderArray[Math.floor(Math.random()*genderArray.length)]
	const raceArray = [
		"American Indian/Alaskan Native",
		"Asian",
		"Black",
		"Hawaiian/Pacific Islander",
		"Unknown",
		"White",
	]
	var race = raceArray[Math.floor(Math.random()*raceArray.length)]
	const ethnicityArray = [
		"Hispanic/Latino",
		"Not Hispanic/Latino",
		"Other",
		"Not Reported"
	]
	var ethnicity = ethnicityArray[Math.floor(Math.random()*ethnicityArray.length)]
	var age = Math.floor(Math.random() * 92) + 18

	document.getElementById("gender").innerHTML = "Gender: " + gender
	document.getElementById("race").innerHTML = "Race: " + race
	document.getElementById("ethnicity").innerHTML = "Ethnicity: " + ethnicity
	document.getElementById("age").innerHTML = "Age: " + age

	window.setMobileTable = function(selector) {
  // if (window.innerWidth > 600) return false;
  const tableEl = document.querySelector(selector);
  const thEls = tableEl.querySelectorAll('thead th');
  const tdLabels = Array.from(thEls).map(el => el.innerText);
  tableEl.querySelectorAll('tbody tr').forEach( tr => {
    Array.from(tr.children).forEach( 
      (td, ndx) =>  td.setAttribute('label', tdLabels[ndx])
    );
  });
}
</script>