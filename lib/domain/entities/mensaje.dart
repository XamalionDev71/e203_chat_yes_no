enum FromWho { emisor, receptor }

class Mensaje {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Mensaje({
    required this.text,
    this.imageUrl,
    required this.fromWho
  });
}

