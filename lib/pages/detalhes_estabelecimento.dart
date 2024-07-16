import 'package:flutter/material.dart';

class detalhes_estabelecimento extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Estabelecimento 1',
            style: TextStyle(
              color: Colors.white, // Cor do texto
              fontSize: 18.0, // Tamanho do texto
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(
                context, "/auth/meus_estabelecimentos");
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            height: 94.0,
            width: double.infinity,
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
                  'Telefone',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '(83) 9 8108-3037',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 17.0,
                  ),
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
                  'Endereço',
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
                Text(
                  'Próximo a UBS',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            height: 118.0,
            width: double.infinity,
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
                  'Gerênciamento de encomendas',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao clicar em histórico
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Cor do botão
                        minimumSize: Size(160, 38), // Tamanho do botão
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Raio da borda
                          side: BorderSide(
                              color: Color(0xFF0090FF),
                              width: 1.0), // Cor e largura da borda
                        ),
                      ),
                      child: Text(
                        'Histórico',
                        style: TextStyle(
                          color: Color(0xFF0090FF),
                          fontSize: 16.0, // Tamanho do texto
                        ),
                      ),
                    ),
                    SizedBox(width: 37.0), // Espaçamento entre os botões
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao clicar no botão Novo
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0090FF), // Cor do botão
                        minimumSize: Size(160, 38), // Tamanho do botão
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Raio da borda
                          side: BorderSide(
                              color: Color(0xFF0090FF),
                              width: 1.0), // Cor e largura da borda
                        ),
                      ),
                      child: Text(
                        'Novo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0, // Tamanho do texto
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: double.infinity,
        height: 50.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Ação ao pressionar o botão de deletar estabelecimento
          },
          label: Text(
            'Deletar estabelecimento',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          backgroundColor: Color(0xFFFF5F5F),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(80.0); // Define a altura da AppBar
}
