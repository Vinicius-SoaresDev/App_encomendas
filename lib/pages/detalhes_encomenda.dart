import 'package:flutter/material.dart';

class detalhes_encomenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Encomenda #230944', // numeração da encomenda
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, "/auth/telainicial"); // ao clicar será redirecionado a tela inicial
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
        backgroundColor: const Color(0xFF0090FF),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            height: 85.0,
            width: double.infinity, 
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Color(0xFF8B8D98),
                      size: 17.0,
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      'Em andamento',
                      style: TextStyle(
                        color: Color(0xFF8B8D98),
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 8.0),
            height: 116.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(14.0),
            ),
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Endereço de entrega',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'R. Frei Manoel, 69, Jatobá, Patos - PB',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Descendo a rua da igreja presbiteriana',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            height: 178.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(14.0),
            ),
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dados do cliente',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Cliente 0',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '(83) 9 0000-0000',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'R. Frei Manoel, 69, Jatobá, Patos - PB',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Descendo a rua da igreja presbiteriana',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
            height: 124.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(14.0),
            ),
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dados do entregador',
                  style: TextStyle(
                    color: Color(0xFF5897DB),
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Entregador 1',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '(83) 9 0000-0000',
                  style: TextStyle(
                    color: Color(0xFF8B8D98),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
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
            // Ação ao pressionar o botão de cancelar corrida
          },
          label: Text(
            'Cancelar',
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
}
