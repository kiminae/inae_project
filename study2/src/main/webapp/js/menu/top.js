
	function fn_menu(menuNo){
		
		var f = document.main;
		f.menuNo.value = menuNo;
		// f.action = "main/goPage.do"; // 이렇게 사용하면 하위루트로 들어간다.
		// f.action = "/study2/main/goPage.do"; // 이렇게 사용하면 /study2라는 기본루트를 항상 적어야만 한다.
		alert(menuNo);
		f.action = "/study2/main/goPage.do";
		
		if(menuNo == 'b'){
			f.action = "/study2/main/goPag2.do";
			
		} else if(menuNo == 'c'){
			f.action = "/study2/main/goPag3.do";
		}
		
		f.submit();
	}
	
	function fn_aaa(menuNo, act){
		
		alert("준비중입니다");
		return false;
	}