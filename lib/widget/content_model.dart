class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
    description: '   Seguridad, velocidad, facilidad\n    son unas de nustras ventajas',
    image: "lib/images/hombre_telefono.png",
    title: ' Gestiona el inventario de tu negocio \n        de manera rápida y segura',
  ),
  UnboardingContent(
    description:
        'Tus datos e inventario siempre estarán disponibles\n    siempre y cuando estés conectado a internet',
    image: "lib/images/mujer_telefono.png",
    title: '    Ten acceso a tu inventario desde \n              cualquier parte del país',
  ),
  UnboardingContent(
      description: '            Funciones de alta calidad \n     para la administración de tu negocio',
      image: "lib/images/mujer_telefono_manos.png",
      title: 'Funciones de alta calidad'),
];
