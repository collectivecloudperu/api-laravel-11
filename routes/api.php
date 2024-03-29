<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {

    Route::resource('postres', 'Api\V1\PostresController');
    Route::post('postres/{id}', 'Api\V1\PostresController@update');
    Route::delete('postres/{id}', 'Api\V1\PostresController@destroy');

});