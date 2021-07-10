<?php
require_once './models/Planta.php';
require_once './interfaces/IApiUsable.php';

use \App\Models\Planta as Planta;

class PlantaController implements IApiUsable
{

  public function CargarUno($request, $response, $args)
  {
    $parametros = $request->getParsedBody();

    $usuario = $parametros['usuario'];
    $clave = $parametros['clave'];

    // Creamos el usuario
    $usr = new Planta();
    $usr->usuario = $usuario;
    $usr->clave = $clave;
    $usr->save();

    $payload = json_encode(array("mensaje" => "Usuario creado con exito"));

    $response->getBody()->write($payload);
    return $response
      ->withHeader('Content-Type', 'application/json');
  }

  public function TraerUno($request, $response, $args)
  {
    // Buscamos usuario por nombre
    $usr = $args['usuario'];

    // Buscamos por primary key
    // $usuario = Usuario::find($usr);

    // Buscamos por attr usuario
    $usuario = Planta::where('usuario', $usr)->first();

    $payload = json_encode($usuario);

    $response->getBody()->write($payload);
    return $response
      ->withHeader('Content-Type', 'application/json');
  }

  public function TraerTodos($request, $response, $args)
  {
    $lista = Planta::all();
    $payload = json_encode(array($lista));

    $response->getBody()->write($payload);
    return $response
      ->withHeader('Content-Type', 'application/json');
  }

  public function ModificarUno($request, $response, $args)
  {
    $parametros = $request->getParsedBody();

    $usrModificado = $parametros['usuario'];
    $usuarioId = $args['id'];

    // Conseguimos el objeto
    $usr = Planta::where('id', '=', $usuarioId)->first();

    // Si existe
    if ($usr !== null) {
      // Seteamos un nuevo usuario
      $usr->usuario = $usrModificado;
      // Guardamos en base de datos
      $usr->save();
      $payload = json_encode(array("mensaje" => "Usuario modificado con exito"));
    } else {
      $payload = json_encode(array("mensaje" => "Usuario no encontrado"));
    }

    $response->getBody()->write($payload);
    return $response
      ->withHeader('Content-Type', 'application/json');
  }

  public function BorrarUno($request, $response, $args)
  {
    $usuarioId = $args['id'];
    // Buscamos el usuario
    $usuario = Planta::find($usuarioId);
    // Borramos
    $usuario->delete();

    $payload = json_encode(array("mensaje" => "Usuario borrado con exito"));

    $response->getBody()->write($payload);
    return $response
      ->withHeader('Content-Type', 'application/json');
  }
}