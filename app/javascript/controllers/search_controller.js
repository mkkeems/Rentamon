import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  refresh() {
    const query = document.querySelector("#search_query");
    const pokecard = document.querySelector("#card-pokemon");
    const queryValue = query.value
    pokecard.innerHTML = "";
    fetch(`/characters?query=${queryValue}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        data.characters.forEach((result) => {
          const piece = `
          <div class="card-product m-4" >
            <div class="card-product-infos">
              <a href="/characters/${result.id}">${result.name}</a>
              <p>Category: ${result.category} </p>
              <strong><p>Price: $ ${result.price} /day</p></strong>
              <a href="/characters/${result.id}">+ more details</a>
            </div>
          </div>`
          pokecard.insertAdjacentHTML("beforeend", piece);
        })
      });
  }
}
