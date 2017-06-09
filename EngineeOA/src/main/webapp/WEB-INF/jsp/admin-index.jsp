<!doctype html>
<html lang="zh" style="overflow-x: hidden; overflow-y:hidden;" >
<head >
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href="${pageContext.request.contextPath}/assets/css/perspectiveRules.css" rel="stylesheet" />
</head>
<body>

	<div id="demo1">
	    <img alt="background" src="${pageContext.request.contextPath}/assets/fonts/background.jpg" />
	    <div id="particle-target" ></div>
	</div>

	<script src="${pageContext.request.contextPath}/assets/js/jquery.1.7.1.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.logosDistort.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.particleground.min.js"></script>
	<script>
	    var particles = true,
	        particleDensity,
	        options = {
	            effectWeight: 1,
	            outerBuffer: 1.08,
	            elementDepth: 220
	        };

	    $(document).ready(function() {

	        $("#demo1").logosDistort(options);

	        if (particles) {
	            particleDensity = window.outerWidth * 7.5;
	            if (particleDensity < 13000) {
	                particleDensity = 13000;
	            } else if (particleDensity > 20000) {
	                particleDensity = 20000;
	            }
	            return $('#particle-target').particleground({
	                dotColor: '#1ec5ee',
	                lineColor: '#0a4e90',
	                density: particleDensity.toFixed(0),
	                parallax: false
	            });
	        }
	    });
	</script>
</body>
</html>