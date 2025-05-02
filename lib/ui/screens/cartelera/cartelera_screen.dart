import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:reelcult/ui/screens/widgets/flip_movie_card.dart';

class CarteleraPage extends StatelessWidget {
  const CarteleraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cartelera',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Descubre las películas en cartelera que tenemos para ti.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(
                    context,
                    title: 'Estrenos',
                    description: 'Las últimas novedades del cine',
                    children: const [
                      FlipMovieCard(
                        title: 'Hojas de otoño',
                        description: 'Ansa es soltera y vive en Helsinki. Trabaja en un supermercado con contrato de cero horas, reponiendo los estantes; luego clasifica el plástico reciclable. Una noche se encuentra accidentalmente con el igualmente solitario trabajador Holappa, un alcohólico. Contra todo pronóstico y malentendidos, intentan construir una relación. Como resultado, Holappa logra controlar su adicción al alcohol.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.vkZQAMqL9ZOms-x8cIRyKQHaKe?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Akira',
                        description: 'En el año 2019, han pasado 30 años desde que una explosión que destruyó por completo la megaciudad de Tokio dio pie al inicio de la Tercera Guerra Mundial en 1988; posteriormente la megaciudad fue reconstruida y rebautizada como Neo-Tokio.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.-90AIj561hPhIk--iXBRXQHaLH?w=123&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Isla de perros',
                        description: 'El alcalde de una ciudad japonesa decreta que, con motivo de una epidemia de gripe canina, todos los perros deben quedar confinados en una isla. Un niño de 12 años emprende una aventura para llegar hasta la isla y rescatar a su mascota.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.ULo4G-2JMch-48YSIWM4lwHaKq?w=136&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'El color púrpura',
                        description: 'La historia se centra en la vida de Celie, una joven muchacha afroamericana, a principios del siglo XX.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.F0iB0QfXmJhWbUqaYVXzugHaKd?w=127&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _buildSection(
                    context,
                    title: 'Más Populares',
                    description: 'Las películas más vistas del momento',
                    children: const [
                      FlipMovieCard(
                        title: 'Joker 2019',
                        description: 'Arthur Fleck, un comediante fallido, se sumerge en la locura cuando la sociedad lo rechaza, convirtiéndose en el infame criminal que Gotham tanto teme.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.Q8C8CQGPKgZgxANznfSp5QHaKj?w=113&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Whiplash',
                        description: 'Un joven baterista se enfrenta a un exigente instructor en una prestigiosa escuela de música, donde la presión y la ambición lo llevan al límite.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.yBh4vfNGmEgPNLW9DHLJ5gHaKY?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'El Graduado',
                        description: 'Benjamin Braddock, un recién graduado sin rumbo en la vida, es seducido por una mujer mayor, la Sra. Robinson, pero luego se enamora de su hija, Elaine.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.71ZK3RQXEO_iGKIMMgDnxQHaFj?w=203&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Kill Bill Vol. 1',
                        description: 'Una mujer conocida como La Novia busca venganza contra su antiguo equipo de asesinos después de que intentan matarla en su boda.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.YWxi9fokvx8RV4NqXZ3oQQHaKF?w=208&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _buildSection(
                    context,
                    title: 'Próximamente',
                    description: 'No te pierdas los próximos lanzamientos',
                    children: const [
                      FlipMovieCard(
                        title: 'Lost in Translation',
                        description: 'Un actor estadounidense y una joven mujer se encuentran en Tokio y desarrollan una conexión inesperada mientras navegan por la soledad y la cultura japonesa.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.xa67f9RJ-f49n5KaMjFI3gHaLH?w=204&h=306&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Paris, Texas',
                        description: 'Un hombre perdido en el desierto de Texas busca reconectar con su hijo y redescubrir su identidad. Un viaje emocional y visualmente impactante.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.aspmqgSqPUgKqG7O-t-JRwHaJ4?w=208&h=277&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Close',
                        description: 'Un drama conmovedor sobre la amistad entre dos adolescentes que se ve amenazada por la presión social y la confusión emocional.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.sFgKDDnq1QzbckAETlYQ4gHaKF?w=128&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                      FlipMovieCard(
                        title: 'Memorias de un asesino',
                        description: 'Un thriller coreano que sigue a un detective que investiga una serie de asesinatos en un pueblo rural durante la década de 1980. Lucha contra la corrupción y la falta de recursos para encontrar al culpable.',
                        imageUrl: 'https://th.bing.com/th/id/OIP.de1_FCYPtMHlnaT_3T1mxAHaLH?w=204&h=306&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String description,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: children.map((child) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: child,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
