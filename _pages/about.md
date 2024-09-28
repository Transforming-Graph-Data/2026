---
layout: about
title: about
permalink: /
subtitle: First Edition

# profile:
#   align: center
#   image: prof_pic.jpg
#   image_circular: false # crops the image to make it circular

news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: false # includes social icons at the bottom of the page
---

<svg version="1.1" xmlns="http://www.w3.org/2000/svg" style="display:block; width:40em; height:40em; margin:0em auto">
	<radialGradient id="background-gradient">
		<stop offset="0" stop-color="rgba(0,0,0,0)"/>
		<stop offset="1" stop-color="rgba(0,0,0,0)"/>
	</radialGradient>
	<rect width="1" height="1" fill="url(#background-gradient)"/>
	<g stroke-width="0.00125"></g>
</svg>
<table style=" display:none;" class="noborder">
	<tbody>
		<tr>
			<td><label for="number-nodes">Number of nodes:</label></td>
			<td><input type="number" min="1" max="300" step="1" value="70" id="number-nodes" style="width:5em"/></td>
		</tr>
		<tr>
			<td><label for="extra-edges">Extra edges:</label></td>
			<td><input type="number" min="0" max="1000" step="any" value="20" id="extra-edges" style="width:5em"/>%</td>
		</tr>
		<tr>
			<td><label for="network-style">Network style:</label></td>
			<td>
				<select id="network-style">
					<option value="0.0">Mesh</option>
					<option value="0.5" selected="selected">Balanced</option>
					<option value="1.0">Hub-and-spoke</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label for="drift-speed">Drift speed:</label></td>
			<td><input type="number" min="0" max="100" step="any" value="1" id="drift-speed" style="width:5em"/></td>
		</tr>
		<tr>
			<td><label for="repulsion-force">Repulsion force:</label></td>
			<td><input type="number" min="0" max="100" step="any" value="1" id="repulsion-force" style="width:5em"/></td>
		</tr>
	</tbody>
</table>

<br><br>
Graphs are increasingly used to represent and capture information about interconnected real-world entities. A rich landscape of graph database systems has emerged to efficiently store, process, and analyse complex graph datasets. While these offer limited support for evolution mechanisms, the proliferation of continuously and collaboratively curated graph data has made it imperative to provide principled and practically tractable mechanisms to define and employ graph transformations and query languages.

Some underlying challenges include the lack of practical formalisms for describing graph transformations and the absence of appropriate syntactic and semantic primitives for capturing and querying various aspects of temporality, such as timeliness or versioning. Moreover, upholding human aspects of graph transformation ecosystems, e.g., interoperability, reliability, scalability, and learning requirements, calls for the design of new models and techniques and for further discussions on the role and use of recent generative AI methods in this setting.

## Important Dates

| What                        | When                  |
|----------------------------------------|-----------------------|
| Abstract Submission                    | January  10th, 2025   |
| Paper Submission                       | January  24th, 2025   |
| Notification of Acceptance             | February  7th, 2025   |
| Camera Ready Paper Due                 | February 14th, 2025   |
| Workshop Date                          | March    25th, 2025   |

  <style>
        table {
            width: 100%; /* Make the table full-width */
            border-collapse: separate;
            border-spacing: 0 10px; /* Add space between rows */
            text-align: left; /* Align text to the left */
        }
        th, td {
            padding: 15px; /* Add padding inside cells */
            background-color: #f9f9f9; /* Light background color */
            border: 1px solid #ddd; /* Add border around cells */
        }
        th {
            background-color: #f1f1f1; /* Slightly darker header background */
            font-weight: bold; /* Make header text bold */
        }
    </style>

<script src="{{ site.baseurl | prepend: site.url }}/animated-floating-graph-nodes.js">
