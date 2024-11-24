// Objetivo inicial do agente
turtle_position(x(X),y(Y),w(W)) :-turtle_position(pose(pose(position(x((X)),y(Y),z(_)),orientation(x(_),y(_),z(_),w(W))),covariance(_))).

!start_moving.

// Plano para iniciar o movimento
+!start_moving
   <- .print("Iniciando o movimento do TurtleBot...");
      !move_straight.

// Plano para mover o TurtleBot em linha reta
+!move_straight
   <- .print("Movendo em linha reta...");
      .move_turtle([-5 , 0.0 , 0.0], [0.0,0.0,0.0]); 
      .wait(8000); 
      .move_turtle([0.0,0.0,0.0], [0.0,0.0,0.0]);
      .print("Andei!");
      !print_position.

// Plano para imprimir a posição final do TurtleBot
+!print_position : turtle_position(x(X), y(Y), w(W))
   <- .print("Posição final do TurtleBot: x =", X, "; y =", Y).

