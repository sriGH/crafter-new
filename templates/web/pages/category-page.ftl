<#import "/templates/system/common/cstudio-support.ftl" as studio />
<html lang="en">
<head>
		<title></title>
		<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/static-assets/css/main.css" />
		<link rel="stylesheet" href="/static-assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
		<script src="/static-assets/js/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
		<script src="/static-assets/js/useraction.js"></script>
        <script>
            function clickToCopy (element) {
            console.log("code copy function");
                var $temp = $("<input>");
                $("body").append($temp);
                $temp.val($(element).html()).select();
                document.execCommand("copy");
                $temp.remove();
                console.log("code copied");
            }
        </script>
	</head>
	<style>
	
	tr.hide-table-padding td {
  padding: 0;
}

.expand-button {
	position: relative;
}

.accordion-toggle .expand-button:after
{
  position: absolute;
  left:.75rem;
  top: 50%;
  transform: translate(0, -50%);
  content: '-';
}
.accordion-toggle.collapsed .expand-button:after
{
  content: '+';
}
.white-popup {
    position: relative;
    background: #FFF;
    padding: 20px;
    width: auto;
    max-width: 500px;
    margin: 20px auto;
}
</style>
	<body>
	<div id="toast">
	    <div class="toast-css"><span>Code Copied!</span></div>
	</div>
	<div class="container-fluid" v-cloak>
	    <div class="row">
	        <div class="col-12">
	            <img class="logo" src="/static-assets/images/sample-logo.png" alt="" />
	       </div>
	    </div>
	    <nav class="navbar navbar-expand-lg navbar-light blue-bg">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/signup">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
    
  </div>
</nav>
</div>	    

<div class="container" v-cloak>	 
    
	<section class="main-content">
	  <#assign merchantId = RequestParameters.mid>
	  <#assign moffers = merchantOffers?eval>
    
      <#list moffers as mo>
	  <#if mo.merchant.mid == merchantId>
	    <div class="row">
	        <div class="col-3 center-align display-block border-r1">
	            <img class="img-fluid" src="/static-assets/images/rakuten1.png" alt="" />
	        </div>
	        <div class="col-9">
	            
	                <div class="offer-title">${mo.merchant.merchantName}</div>
	                <h6>Travel, Vacations, Flights, Lorem Ipsum categories</h6>
	       </div>
	    </div>
	    
	    <hr>
	    
	    <div class="row">
	        <div class="col-3 vertical-align center-align">
	            <span class="font-60 bold">${mo.cbOffer.commissionTerms} %</span><br> Cash back
	        </div>
	        <div class="col-9">
	            Merchant information will be displayed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. 
	        </div>
	    </div>
	    
	    <hr>
	    <#assign cpOffers = mo.couponOffers>
	    
	    <#list cpOffers as co>
    	    <div class="row offer-codebox">
    	        <div class="col-3 vertical-align center-align off">
    	            <a class="display-block no-uline black" href=${co.clickUrl} target="_blank">Upto <span class="font-28 bold">${mo.cbOffer.commissionTerms}% OFF</span></a>
    	        </div>
    	        <div class="col-6 vertical-align font-14 off">
    	            <a class="display-block no-uline black" href=${co.clickUrl} target="_blank">Offer Description: ${co.offerDescription}. Apply Promo Code ${co.couponCode}; Save up To ${mo.cbOffer.commissionTerms}% Off !</a>
    	        </div>
    	        <div class="col-3 center-align display-block vertical-align">
    	            <div class="code-css font-12 code"><button type="button" class="copy-code-btn" onclick="clickToCopy('#texttocopy')"> Copy Code: <span id="texttocopy">${co.couponCode}</span></button></div>
    	            <span class="red font-12">Expires by ${co.offerEndDate}</span>
    	        </div>
    	    </div>
	    </#list>
	</section>
	</#if>
  </#list>
</div>	
 
    <!-- jQuery library -->

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
   <!-- Bootstrap JS -->
    <script src="/static-assets/js/bootstrap.min.js"></script>


	<@studio.toolSupport/>
	</body>
</html>