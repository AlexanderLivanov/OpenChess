all: main

main: main.o
	mkdir build
	g++ -o OpenChess main.o board.o piece.o pieceTextures.o chessGame.o -lsfml-graphics -lsfml-window -lsfml-system
	cp *.o build
	rm -rf *.o main

main.o: main.cpp
	g++ -c main.cpp board.cpp piece.cpp pieceTextures.cpp chessGame.cpp
	
clean:
	rm -rf *.o main
	rm -rf build