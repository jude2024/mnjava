Récupérer des éléments HTML
Avec querySelector

const title = document.querySelector("h1");
const title = document.querySelector("h1") as HTMLHeadingElement;
const input = document.querySelector("#username") as HTMLInputElement;
const button = document.querySelector("#btn") as HTMLButtonElement;
const form = document.querySelector("#form") as HTMLFormElement;
const list = document.querySelector("#list") as HTMLUListElement;
const image = document.querySelector("#avatar") as HTMLImageElement;

Avec getElementById

const app = document.getElementById("app") as HTMLDivElement;

Vérifier si l’élément existe

const app = document.querySelector("#app");

if (!app) {
  throw new Error("Élément #app introuvable");
}

app.innerHTML = "<h1>Mon application</h1>";

 Modifier le contenu d’un élément
Modifier le texte
const title = document.querySelector("h1") as HTMLHeadingElement;

title.textContent = "Nouveau titre";

Modifier le HTML

const app = document.querySelector("#app") as HTMLDivElement;

app.innerHTML = `
  <h1>TodoList</h1>
  <p>Bienvenue dans mon application</p>
`;

Modifier les attributs HTML
Exemple avec une image

const image = document.querySelector("#avatar") as HTMLImageElement;

image.src = "avatar.png";
image.alt = "Photo de profil";

Manipuler les classes CSS
Ajouter une classe
const box = document.querySelector(".box") as HTMLDivElement;

box.classList.add("active");

Retirer une classe
box.classList.remove("active");


Créer des éléments HTML
Exemple : créer une tâche dans une liste.
const list = document.querySelector("#list") as HTMLUListElement;

const li = document.createElement("li");
li.textContent = "Apprendre TypeScript";

list.appendChild(li);
Clic sur bouton
const button = document.querySelector("#btn") as HTMLButtonElement;

button.addEventListener("click", () => {
  console.log("Bout

  Exemple HTML
<form id="user-form">
  <input id="name" type="text" placeholder="Nom" />
  <input id="email" type="email" placeholder="Email" />
  <

const form = document.querySelector("#user-form") as HTMLFormElement;
const nameInput = document.querySelector("#name") as HTMLInputElement;
const emailInput = document.querySelector("#email") as HTMLInputElement;
const passwordInput = document.querySelector("#password") as HTMLInputElement;

Écouter la soumission du formulaire

form.addEventListener("submit", (event) => {
  event.preventDefault();

  const name = nameInput.value;
  const email = emailInput.value;
  const password = passwordInput.value;

  console.log(name, email, password

Récupérer les valeurs des champs
Input texte

const value = nameInput.value;


const checkbox = document.querySelector("#done") as HTMLInputElement;

console.log(checkbox.checked);

Validation simple de formulaire
form.addEventListener("submit", (event) => {
  event.preventDefault();

  const name = nameInput.value.trim();
  const email = emailInput.value.trim();
  const password = passwordInput.value.trim();

  if (name === "") {
    alert("Le nom est obligatoire");
    return;
  }

  if (email === "") {
    alert("L'email est obligatoire");
    return;
  }

  if (password.length < 4) {
    alert("Le mot de passe est trop court");
    return;
  }

  console.log("Form
Afficher des messages à l’utilisateur
Au lieu de faire seulement alert, tu peux afficher un message dans la page.
HTML :

<p id="message"></p>

const message = document.querySelector("#message") as HTMLParagraphElement;

message.textContent = "Compte créé avec succès";
message.classList.add("success");


// Récupérer un élément
document.querySelector("#id");

// Modifier le texte
element.textContent = "Texte";

// Modifier le HTML
element.innerHTML = "<strong>HTML</strong>";

// Modifier le style
element.style.color = "red";

// Ajouter une classe
element.classList.add("active");

// Retirer une classe
element.classList.remove("active");

// Basculer une classe
element.classList.toggle("hidden");

// Créer un élément
document.createElement("div");

// Ajouter dans la page
parent.appendChild(child);

// Supprimer
element.remove();

// Écouter un clic
button.addEventListener("click", () => {});

// Écouter un formulaire
form.addEventListener("submit", (event) => {
  event.preventDefault();
});

// Récupérer valeur input
input.value;

// Récupérer checkbox
checkbox.checked;

// Désactiver bouton
button.disabled = true;

HTML de base
Dans index.html, tu as souvent :
<div id="app"></div>


const app = document.querySelector("#app") as HTMLDivElement;

const fruits: string[] = ["Pomme", "Banane", "Orange", "Mangue"];

app.innerHTML = `
  <h1>Liste des fruits</h1>
  <ul id="fruit-list"></ul>
`;

const fruitList = document.querySelector("#fruit-list") as HTMLUListElement;

for (const fruit of fruits) {
  const li = document.createElement("li");
  li.textContent = fruit;

  fruitList.appendChild(li);
}
  
