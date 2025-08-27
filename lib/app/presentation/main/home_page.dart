import 'package:flutter/material.dart';
import 'package:learn/app/data/menu/pokemon_basic_model.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  PokemonBasicModel? pokemon;
  bool isLoading = false;
  String? errorMessage;

  Future<void> _searchPokemon(String name) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
      pokemon = null;
    });

    try {
      final dio = Dio();
      final response = await dio.get("https://pokeapi.co/api/v2/pokemon/$name");

      // Cria o modelo usando apenas os dados necessários
      pokemon = PokemonBasicModel.fromJson({
        "name": response.data['name'],
        "url": "https://pokeapi.co/api/v2/pokemon/$name"
      });

      setState(() => isLoading = false);
    } catch (e) {
      setState(() {
        errorMessage = "Pokémon '$name' não encontrado!";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buscar Pokémon')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Campo de busca
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Digite o nome do Pokémon',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () =>
                      _searchPokemon(_controller.text.trim().toLowerCase()),
                  child: const Text('Buscar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (isLoading)
              const CircularProgressIndicator()
            else if (errorMessage != null)
              Text(
                errorMessage!,
                style: const TextStyle(color: Colors.red, fontSize: 16),
              )
            else if (pokemon != null)
              Column(
                children: [
                  Text(
                    'Nome: ${pokemon!.name}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'URL: ${pokemon!.url}',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
