import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: const Color(0xFF0090FF),
      actions: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 26.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 26.0,
              ),
            ),
          ],
        ),
      ],
      toolbarHeight: 80.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}

class telainicial extends StatelessWidget {
  const telainicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0), // Espaçamento inferior
            child: Text(
              'Olá, nome!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 160.0, // tamanho do container
                child: ListView(
                  scrollDirection: Axis.horizontal, // para conseguir mover para o sentido horizontal
                  children: <Widget>[
                    const SizedBox(width: 8.0), // espaçamento
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, "/auth/meus_estabelecimentos"); //ao clicar no container vai pra parte de meus estabelecimentos
                      },
                      child: Container(
                        width: 220.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.store,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Meus estabelecimentos',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17.0,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.blue,
                              size: 26.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        // Ação para nova encomenda
                      },
                      child: Container(
                        width: 220.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Nova encomenda',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17.0,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.blue,
                              size: 26.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        // ação para o histórico de encomendas
                      },
                      child: Container(
                        width: 220.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.receipt,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Histórico de encomendas',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17.0,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.blue,
                              size: 26.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft, // alinhamento a esquerda
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Acompanhamento de encomendas ativas',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0090FF),
                    fontSize: 16.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '#230944',
                style: TextStyle(color: Color(0xFF5897DB), fontSize: 16.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xFFEEF1F3),
                    size: 12.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Aguardando um entregador',
                    style: TextStyle(
                      color: Color(0xFF8B8D98),
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '#230945',
                style: TextStyle(color: Color(0xFF5897DB), fontSize: 16.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xFFEEF1F3),
                    size: 12.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Em rota para o endereço do cliente',
                    style: TextStyle(
                      color: Color(0xFF8B8D98),
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '#230946',
                style: TextStyle(color: Color(0xFF5897DB), fontSize: 16.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xFFEEF1F3),
                    size: 12.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Entregue ao cliente',
                    style: TextStyle(
                      color: Color(0xFF8B8D98),
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}