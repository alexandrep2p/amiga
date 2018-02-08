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

