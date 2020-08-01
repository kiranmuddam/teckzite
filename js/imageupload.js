
    function uploadimage(el) {
        
notify("Please Wait........Uploading..........","warning","4000","false");
        $.ajax({
            url: "uploadabstract.php",
            type: "POST",
            data: new FormData(el),
            contentType: false,
            cache: false,
            processData: false,
            success: function (data) {
				if(data.indexOf("success")!=-1){notify("Your Abstract Uploaded successfully...Please wait while changes takes place.","success","4000","false");$("#hiid").html("<center><span  style='color:green;'>Abstract Uploaded Successfully</span></center>");}
				else{
            notify(data,"error","2500","false");}
            }
        });
    }
