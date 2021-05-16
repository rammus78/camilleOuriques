const listaDeMoedas = [ 
	{
		moedaOrigem: "Real-Br",
		moedaDestino: "Dolar-USA",
		valorASerConvertido: 250.00
	}
];

function calculadoraDeCambio(listaDeMoedas){
	const listaDeMoedasConvertidas = listaDeMoedas;
	let valorConvertidoSemTaxa = 0;
	let valorConvertidoComTaxa = 0;
	let valorDaTaxa = 0;
	let taxa = 0.1;


	listaDeMoedasConvertidas.forEach(element => {
		const {moedaDestino, moedaOrigem, valorASerConvertido} = element;
		const valorDaMoeda = getValorDaMoeda(moedaOrigem, moedaDestino);
		valorConvertidoSemTaxa = valorASerConvertido / valorDaMoeda;
		valorDaTaxa = valorConvertidoSemTaxa * taxa;
		valorConvertidoComTaxa = valorConvertidoSemTaxa - valorDaTaxa;
		element.valorConvertidoSemTaxa = valorConvertidoSemTaxa.toFixed(2);
		element.valorConvertidoComTaxa = valorConvertidoComTaxa.toFixed(2);
	});

	return listaDeMoedasConvertidas;
};

function getValorDaMoeda(moedaOrigem, moedaDestino) {
	//Aqui ou a gente registra fixo algum lugar ou consulta em algum serviço isso
	if(moedaDestino == "Dolar-USA" && moedaOrigem == "Real-Br") {
		const umDolarParaReal = 5.27;
		return umDolarParaReal;
	}
}

console.log(calculadoraDeCambio(listaDeMoedas));