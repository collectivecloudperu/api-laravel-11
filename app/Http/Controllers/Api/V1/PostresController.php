<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Postres;
use Illuminate\Http\Request;

class PostresController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $postres = Postres::all();
        return response()->json($postres);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $postres = new Postres;
        $postres->nombre = $request->nombre;
        $postres->precio = $request->precio;
        $postres->stock = $request->stock;
        $postres->save();

        return response()->json([
            "message" => "Registro Agregado Correctamente !"
        ]);

    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $postres = Postres::find($id);

        if(!empty($postres)) {
            return response()->json($postres);
        }
        else {
            return response()->json([
                "message" => "El Registro no se encuentra."
            ]);
        }

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $postres = Postres::find($id);

        $postres->nombre = $request->nombre;
        $postres->precio = $request->precio;
        $postres->stock = $request->stock;
        $postres->save();

        return response()->json([
            "message" => "Registro Actualizado Correctamente !"
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $postres = Postres::find($id);
        $postres->delete();

        return response()->json([
            "message" => "Registro Eliminado Correctamente !"
        ]);
    }

}
