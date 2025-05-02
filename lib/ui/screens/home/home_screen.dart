import 'package:flutter/material.dart';
import 'package:reelcult/ui/screens/cartelera/cartelera_screen.dart';
import 'package:reelcult/ui/screens/widgets/category_button.dart';
import 'package:reelcult/ui/screens/widgets/featured_movie.dart';
import 'package:reelcult/ui/screens/widgets/flip_movie_card.dart';
import 'package:reelcult/ui/screens/widgets/movie_card.dart';
import 'package:reelcult/ui/screens/movie_detail_screen.dart';
import '../../widgets/category_button.dart';
import '../../widgets/featured_movie.dart';
import '../../widgets/movie_card.dart';
import '../../widgets/flip_movie_card.dart' as widgets; // Importamos el nuevo widget con alias
import '../cartelera/cartelera_screen.dart';
import '../sobre_nosotros/sobre_nosotros_screen.dart';
import '../perfil/perfil_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    InicioPage(),
    CarteleraPage(),
    SobreNosotrosPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReelCult', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white70,
            child: IconButton(
              icon: const Icon(Icons.person, color: Color(0xFF3F3B8A)),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.white70,
            child: IconButton(
              icon: const Icon(Icons.add, color: Color(0xFF3F3B8A)),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF3F3B8A),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Cartelera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Nosotros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Perfil Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de búsqueda
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar películas, directores, géneros...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Sección de categorías
            const Text(
              'Explorar por categoría',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(text: 'Drama'),
                  CategoryButton(text: 'LGBT'),
                  CategoryButton(text: 'Recientes'),
                  CategoryButton(text: 'Clásicos'),
                  CategoryButton(text: 'Indie'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // Sección destacados (Aquí importamos todo lo que es la image, descripción y demás desde fetaured_movie.dart)
            const Text(
              'Destacados esta semana',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              
            ),
            const SizedBox(height: 12),
            const FeaturedMovie(),
            const SizedBox(height: 24),
            
            
            // Nueva sección de películas con tarjetas giratorias
            const Text(
              'Películas recomendadas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:  [
                  FlipMovieCard(
                    title: 'Parásitos',
                    description: 'Una familia desempleada se interesa por el estilo de vida de la adinerada familia Park, hasta que se ven atrapados en un incidente inesperado. Dirigida por Bong Joon-ho.',
                    imageUrl: 'https://is4-ssl.mzstatic.com/image/thumb/Video113/v4/80/72/4c/80724cd8-92a9-9f31-f9de-527fd18c8012/pr_source.lsr/900x900bb.jpg',
                  ),
                  FlipMovieCard(
                    title: 'Todo en todas partes al mismo tiempo',
                    description: 'Una inmigrante china se ve envuelta en una aventura salvaje, donde solo ella puede salvar el mundo explorando otros universos que conectan con las vidas que podría haber llevado.',
                    imageUrl: 'https://tse4.mm.bing.net/th/id/OIP.lzIT1UB6hdBccteLcSkO-AHaKe?rs=1&pid=ImgDetMain',
                  ),
                  FlipMovieCard(
                    title: 'El Padrino',
                    description: 'Don Vito Corleone, el jefe de una familia de la mafia de Nueva York, recibe peticiones en el día de la boda de su hija. Una historia épica sobre familia, lealtad y poder dirigida por Francis Ford Coppola.',
                    imageUrl: 'https://tse3.mm.bing.net/th/id/OIP.3cNI5bOZ8BTHfdzOs2c-7wHaLd?rs=1&pid=ImgDetMain',
                  ),
                  FlipMovieCard(
                    title: 'Pulp Fiction',
                    description: 'Las vidas de dos mafiosos, un boxeador, la esposa de un gángster y un par de bandidos se entrelazan en cuatro historias de violencia y redención. Una obra maestra de Quentin Tarantino.',
                    imageUrl: 'https://tse1.mm.bing.net/th/id/OIP.z6bKjfyEmcYCRRPy4b0_KgHaLH?rs=1&pid=ImgDetMain',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // Continuar viendo
            const Text(
              'Continuar viendo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FlipMovieCard(
                    title: 'Días perfectos',
                    description: 'Hirayama parece totalmente satisfecho con su sencilla vida de limpiador de retretes en Tokio. Fuera de su estructurada rutina diaria, disfruta de su pasión por la música y los libros. Le encantan los árboles y les hace fotos. Una serie de encuentros inesperados revelan poco a poco más de su pasado.',
                    imageUrl: 'https://th.bing.com/th/id/OIP.fN54yT2TsgXI2wv-bw74_gHaK-?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  ),
                  FlipMovieCard(
                    title: 'Espiando a los detectives',
                    description: 'Neil es un acérrimo fan de películas que lleva un videoclub especializado en cine negro y películas de culto poco convencionales. Un día, Neil conoce a Violet (Lucy Liu), una sexy y aventurera mujer que inmediatamente se siente atraída por él. ',
                    imageUrl: 'https://th.bing.com/th/id/OIP.zyXWWzbnlPsR_b2cc5lE_wHaLH?w=122&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  ),
                  FlipMovieCard(
                    title: 'La peor persona del mundo',
                    description: 'Julie va a cumplir los treinta y su vida es un desastre existencial. Ya ha desperdiciado parte de su talento y su novio Aksel, un exitoso novelista gráfico mayor que ella, la presiona para que contenga su energía creativa y siente la cabeza. Una noche se cuela en una fiesta y conoce al joven y encantador Eivind.',
                    imageUrl: 'https://th.bing.com/th/id/OIP.M2LdrsBVHV0tVNkBbqQ1_QHaK-?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  ),
                  FlipMovieCard(
                    title: 'Lady Bird',
                    description: 'Christine (Saoirse Ronan), que se hace llamar "Lady Bird", es una adolescente de Sacramento en su último año de instituto. La joven, con inclinaciones artísticas y que sueña con vivir en la costa Este, trata de ese modo encontrar su propio camino y definirse fuera de la sombra protectora de su madre (Laurie Metcalf).',
                    imageUrl: 'https://th.bing.com/th/id/OIP.4dOL2YEWfNMqDjQfPE4oXAHaK8?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}