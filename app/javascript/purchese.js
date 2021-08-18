const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);     //Payjpの公開鍵
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();                                       //railsの方で送信されないように設定
    
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);                 //フォームに入力された値を取得できるオブジェクト 

    const card = {                                             //カード情報の取得
      number: formData.get("order[number]"),
      cvc:    formData.get("order[cvc]"),
      exp_month: formData.get("order[exp_month]"),
      exp_year:  `20${formData.get("order[exp_year]")}`,
    };

    Payjp.createToken(card, (status, response) => {            //アロー関数 status=HTTPコード, response=トークン入る
      
      if (status == 200) {                                     
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token' type='hidden'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
  
      }

      document.getElementById("card-number").removeAttribute("name");       //送信前にクレカ情報削除
      document.getElementById("card-cvc").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");


      document.getElementById("charge-form").submit();                      //カード情報の送信（５行目で送信停止した為）
    });
  })
};

window.addEventListener("load", pay);