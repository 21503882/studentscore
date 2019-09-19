function initProvince(){
			$("#province").empty();
			var provinces=country.country;
			for(var i=0;i<provinces.length;i++){
				var province=provinces[i];
				var option="<option value='"+province.name+"'>"+province.name+"</option>";
					$("#province").append(option);
				}	
			getCity();		
		}
	function getCity(){
			$("#city").empty();
			$("#county").empty();
			var province=$("#province").val();
			var provinces=country.country;
			for(var i=0;i<provinces.length;i++){
					if(province==provinces[i].name){
						var citys=provinces[i].city;
						break;
						}
				}
			for(var i=0;i<citys.length;i++){
				var option=$("<option value='"+citys[i].name+"'>"+citys[i].name+"</option>");
				$("#city").append(option);
				}
			getCounty();
		}
	function getCounty(){
			$("#county").empty();
			var city=$("#city").val();
			var flag=false;
			var provinces=country.country;
			for(var i=0;i<provinces.length;i++){
					var citys=provinces[i].city;
					for(var j=0;j<citys.length;j++){
						if(city==citys[j].name){
							var areas=citys[j].area;
							flag=true;
							break;
							}
						}
					if(flag==true){
						break;
						}
				}
			for(var i=0;i<areas.length;i++){
					var option=$("<option value='"+areas[i]+"'>"+areas[i]+"</option>");
					$("#county").append(option);				
				}
		}