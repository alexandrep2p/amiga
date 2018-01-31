<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"><!--Fontes do form-->
    <script type="text/javascript" src="assets/jquery.js"></script><!--Necessário para as mascaras dos inputs-->
    <script type="text/javascript" src="assets/jquery.maskedinput.js"></script><!--Necessário para as mascaras dos inputs-->
    <link rel="stylesheet" type="text/css" href="assets/style.css"><!--CSS do form, não é o bootstrap-->
  </head>

  <!--Método para as máscaras dos inputs--> 
  <script type="text/javascript">
    $(document).ready(function(){
      $("#cpf").mask("999.999.999-99");
      $("#data").mask("99/99/9999");
      $("#cep").mask("99.999-999");
      $("#telefone").mask("(99)9999-9999");
      $("#celular").mask("(99)99999-9999");
    });
  </script>

      <!-- Script VIACEP -->
      <script type="text/javascript" >

        $(document).ready(function() {

            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#rua").val("");
                $("#bairro").val("");
                $("#cidade").val("");
                $("#uf").val("");
                $("#ibge").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#rua").val("...");
                        $("#bairro").val("...");
                        $("#cidade").val("...");
                        $("#uf").val("...");
                        $("#ibge").val("...");

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#rua").val(dados.logradouro);
                                $("#bairro").val(dados.bairro);
                                $("#cidade").val(dados.localidade);
                                $("#uf").val(dados.uf);
                                $("#ibge").val(dados.ibge);
                            } //end if.
                            else {
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            });
        });

    </script>

  <body>
    <form id="regForm" action="/action_page.php">
      <h1>16º Encontro - "De volta ao berço"</h1>
      <p>Associação dos Militares Inativos de Guaratinguetá e Adjacências</p>
      <p>R: Mórmons, no 51 – Pedregulho – Guaratinguetá/ SP – CEP: 12.515-100- tel: (12) 3125-7798/ 3125-7843</p>
      <p>www.amigafa.com – email: encontrao@amigafa.com</p>
      <!-- Cada "tab" é um step do form: -->
      <div class="tab">Dados Pessoais:
        <p><input id="cpf"class="notNull" placeholder="CPF" oninput="this.className = ''" name="mil_cpf"></p>
        <p><input placeholder="RG Civil" oninput="this.className = ''" name="mil_rgCivil"></p>
        <p><input placeholder="RG Militar" oninput="this.className = ''" name="mil_rgMilitar"></p>
        <p><input class="notNull" placeholder="Nome" oninput="this.className = ''" name="mil_nome"></p>
        <p><input placeholder="Nome de Guerra" oninput="this.className = ''" name="mil_nomeGuerra"></p>
        <p><input placeholder="Posto/Graduação" oninput="this.className = ''" name="mil_postoGrad"></p>
        <p><input id="data" class="notNull" placeholder="Data de Formatura: DD/MM/AAAA" oninput="this.className = ''" name="mil_dataFormatura"></p>
      </div>
      <div class="tab">Endereço:
        <p><input id="cep" class="notNull" placeholder="CEP" oninput="this.className = ''" name="mil_cpf"></p>
        <p><input id="rua" class="notNull" placeholder="Endereço" oninput="this.className = ''" name="mil_endereco"></p>
        <p><input placeholder="Numero" oninput="this.className = ''" name="mil_numeroEndereco"></p>
        <p><input placeholder="Complemento" oninput="this.className = ''" name="mil_complementoEndereco"></p>
        <p><input id="bairro" class="notNull" placeholder="Bairro" oninput="this.className = ''" name="mil_bairro"></p>
        <p><input id="cidade" class="notNull" placeholder="Cidade" oninput="this.className = ''" name="mil_cidade"></p>
        <p><input id="uf" class="notNull" placeholder="Estado/UF" oninput="this.className = ''" name="mil_estado"></p>
      </div>
      <div class="tab">Contatos:
        <p><input id="telefone" placeholder="Telefone: (XX) XXXX-XXXX" oninput="this.className = ''" name="mil_telefone"></p>
        <p><input id="celular" placeholder="Celular: (XX) XXXXX-XXXX" oninput="this.className = ''" name="mil_celular"></p>
        <p><input class="notNull" placeholder="Email:" oninput="this.className = ''" name="mil_email"></p>
      </div>
      <div class="tab">Eventos - Veterano:
        <p></p>
        <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
      </div>
      <div style="overflow:auto;">
        <div style="float:right;">
          <button type="button" id="prevBtn" onclick="nextPrev(-1)">Voltar</button>
          <button type="button" id="nextBtn" onclick="nextPrev(1)">Próximo</button>
        </div>
      </div>
      <!-- Bolinhas que marcam o progresso, colocar na quantidade de steps que tem no form: -->
      <div style="text-align:center;margin-top:40px;">
        <span class="step"></span>
        <span class="step"></span>
        <span class="step"></span>
        <span class="step"></span>
      </div>
    </form>
  </body>

<script>
var currentTab = 0; // A tab padrão é a tab 0 (0)
showTab(currentTab); // Mostra a tab padrão

function showTab(n) {
  // Essa função mostra uma tab especifica do form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... Muda o botão para "Enviar" ao termino do form:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Enviar";
  } else {
    document.getElementById("nextBtn").innerHTML = "Próximo";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // Funcao de campos not null
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByClassName("notNull");
  // Loop que verifica os inputs da div ativa:
  for (i = 0; i < y.length; i++) {
    // se o campo estiver vazio...
    if (y[i].value == "") {
      // adiciona a classe "invalid" no campo:
      y[i].className += " invalid";
      // seta o valor do status para false
      valid = false;
    }
  }
  // se o status estiver true, marca o step como finalizado e valido:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // retorna o status valido
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
  </script>
</html>
