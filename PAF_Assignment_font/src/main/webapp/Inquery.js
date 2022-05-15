$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});



// SAVE ============================================
$(document).on("click", "#btnSave", function() {
	
	
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation------------------- 
	var status = validateInquiryForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	// If valid------------------------
	$("#formInquiry").submit();
	
	
});



// UPDATE==========================================
$(document).on("click", ".btnUpdate", function() {
	$("#hidInquiryIDSave").val($(this).closest("tr").find('#hidInquiryIDUpdate').val());
	
	$("#title").val($(this).closest("tr").find('td:eq(0)').text());
	$("#desc").val($(this).closest("tr").find('td:eq(1)').text());
	$("#payNo").val($(this).closest("tr").find('td:eq(2)').text());
	$("#addr").val($(this).closest("tr").find('td:eq(3)').text());
	$("#conNo").val($(this).closest("tr").find('td:eq(4)').text());
});


// Delete============================================
$(document).on("click", ".btnRemove", function(event) {
	$.ajax({
		url : "InqueryAPI",
		type : "DELETE",
		data : "inquiryID=" + $(this).data("inquiryID"),
		dataType : "text",
		complete : function(response, status) {
			onInquiryDeleteComplete(response.responseText, status);
		}
	});
});



// CLIENT-MODEL==============================================================
function validateInquiryForm() {
	// CODE
	if ($("#title").val().trim() == "") {
		return "Insert Inquiry Title.";
	}
	// NAME
	if ($("#desc").val().trim() == "") {
		return "Insert Inquiry Description.";
	}
	
	if ($("#payNo").val().trim() == "") {
		return "Insert Inquiry Payment Number.";
	}
	
	if ($("#addr").val().trim() == "") {
		return "Insert Address.";
	}
	
	if ($("#conNo").val().trim() == "") {
		return "Insert Inquiry contact Number.";
	}
	
	return true;
}

$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation-------------------
	var status = validateInquiryForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	// If valid------------------------
	var type = ($("#hidInquiryIDSave").val() == "") ? "POST" : "PUT";
	$.ajax(
		{
			url: "InqueryAPI",
			type: type,
			data: $("#formInquiry").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onInquirySaveComplete(response.responseText, status);
			}
		});
});


function onInquirySaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divInquiryGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidInquiryIDSave").val("");
	$("#formInquiry")[0].reset();
}



function onInquiryDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divInquiryGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}