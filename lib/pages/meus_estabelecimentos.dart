import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class meus_estabelecimentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Defina a altura da AppBar
        child: AppBar(
          title: Center(
            // Centraliza o conteúdo da AppBar
            child: Text(
              'Meus Estabelecimentos',
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 18.0, // Tamanho do texto
              ),
            ),
          ),
          leading: GestureDetector(
            // Define o ícone de volta à esquerda
            onTap: () {
              Navigator.pushReplacementNamed(context, "/auth/telainicial");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 26.0,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF0090FF), // Define a cor do AppBar
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estabelecimento 1',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'R. Donato Lócio, 34 - Jatobá, Patos - PB, 58707-380',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xFF8B8D98),
                          size: 26.0,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: Color(0xFF8B8D98),
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, "/auth/detalhes_estabelecimento");
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Detalhes',
                            style: TextStyle(
                              color: Color(0xFF0090FF),
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF0090FF),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 1.0,
                horizontal: 8.0), // espaçamento entre os containers
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estabelecimento 2',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'R. Donato Lócio, 34 - Jatobá, Patos - PB, 58707-380',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xFF8B8D98),
                          size: 26.0,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: Color(0xFF8B8D98),
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, "/auth/detalhes_estabelecimento");
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Detalhes',
                            style: TextStyle(
                              color: Color(0xFF0090FF),
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF0090FF),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Ação ao pressionar o botão de adicionar
        },
        label: Text('Adicionar'),
        icon: Icon(Icons.add),
        backgroundColor: Color(0xFF0090FF),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
